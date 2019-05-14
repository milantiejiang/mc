#ifndef SHADERLOADER_H_INCLUDED
#define SHADERLOADER_H_INCLUDED

#include <string>
#include "../glad/glad.h"

GLuint loadShaders( const std::string& vertexShader,
                    const std::string& fragmentShader);

#endif // SHADERLOADER_H_INCLUDED
