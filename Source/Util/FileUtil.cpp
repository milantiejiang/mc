#include "FileUtil.h"

#include <fstream>
#include <sstream>
#include <stdexcept>

std::string getFileContents(const std::string& filePath)
{
    std::ifstream inFile(filePath);
    if(!inFile.is_open())
    {
        throw std::runtime_error("Unable to open file: " + filePath);
    }

    std::stringstream stream;

    stream << inFile.rdbuf();
    return stream.str();
}

std::string getExeDir()
{
    char buf[0];
    uint32_t size = 0;
    int res = _NSGetExecutablePath(buf,&size);
    
    char* path = (char*)malloc(size+1);
    path[size] = 0;
    res = _NSGetExecutablePath(path,&size);
    
    char* p = strrchr(path, '/');
    *p = 0;
    std::string pathTemp;
    pathTemp.append(path);
    free(path);
    return pathTemp;
}

