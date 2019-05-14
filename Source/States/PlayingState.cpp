#include "PlayingState.h"


#include "../Application.h"
#include "../Maths/Ray.h"
#include "../Renderer/RenderMaster.h"
#include "../World/Event/PlayerDigEvent.h"

#include <iostream>


StatePlaying::StatePlaying(Application& app, const Config& config)
:   StateBase   (app)
,   m_world     (app.getCamera(), config, m_player)
{
    app.getCamera().hookEntity(m_player);

    m_chTexture.loadFromFile("Res/Textures/ch.png");
    m_crosshair.setTexture(&m_chTexture);
    m_crosshair.setSize({21, 21});
    m_crosshair.setOrigin(m_crosshair.getGlobalBounds().width / 2,
                          m_crosshair.getGlobalBounds().height / 2);
    m_crosshair.setPosition(app.getWindow().getSize().x / 2,
                            app.getWindow().getSize().y / 2);
}

void StatePlaying::handleEvent(sf::Event e)
{ }

void StatePlaying::handleInput()
{
    m_player.handleInput(m_pApplication->getWindow());

    static sf::Clock timer;
    glm::vec3 lastPosition;

    for (Ray ray({m_player.position.x, m_player.position.y + 0.6f, m_player.position.z}, m_player.rotation); //Corrected for camera offset
             ray.getLength() < 6;
             ray.step(0.05))
    {
        int x = ray.getEnd().x;
        int y = ray.getEnd().y;
        int z = ray.getEnd().z;

        auto block  = m_world.getBlock(x, y, z);
        auto id     = (BlockId)block.id;

        if(id != BlockId::Air && id != BlockId::Water)
        {
            if (timer.getElapsedTime().asSeconds() > 0.2)
            {
                if (sf::Mouse::isButtonPressed(sf::Mouse::Left))
                {
                    timer.restart();
                    m_world.addEvent<PlayerDigEvent>(sf::Mouse::Left, ray.getEnd(), m_player);
                    break;
                }
                else if (sf::Mouse::isButtonPressed(sf::Mouse::Right))
                {
                    timer.restart();
                    m_world.addEvent<PlayerDigEvent>(sf::Mouse::Right, lastPosition, m_player);
                    break;
                }
            }
        }
        lastPosition = ray.getEnd();
    }


}

void StatePlaying::update(float deltaTime)
{

    if (m_player.position.x < 0) m_player.position.x = 0;
    if (m_player.position.z < 0) m_player.position.z = 0;

    m_fpsCounter.update();
    m_player.update(deltaTime, m_world);
    m_world.update(m_pApplication->getCamera());


}

void StatePlaying::render(RenderMaster& renderer)
{
    static sf::Clock dt;

    static bool drawGUI = false;
    static ToggleKey drawKey(sf::Keyboard::F3);

    if (drawKey.isKeyPressed())
    {
        drawGUI = !drawGUI;
    }

    if (drawGUI)
    {
        m_fpsCounter.draw(renderer);
        renderer.drawSFML(m_crosshair);
        m_player.draw(renderer);
    }


    m_world.renderWorld(renderer, m_pApplication->getCamera());
}

void StatePlaying::onOpen()
{
    m_pApplication->turnOffMouse();
}
