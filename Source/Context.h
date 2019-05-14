#ifndef CONTEXT_H_INCLUDED
#define CONTEXT_H_INCLUDED

#include <SFML/Graphics.hpp>

#include "Config.h"

struct Context
{
    Context(const Config& config);

    sf::RenderWindow window;
};

#endif // CONTEXT_H_INCLUDED
