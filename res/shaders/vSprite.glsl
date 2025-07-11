#version 460
layout(location = 0) in vec2 vertex_position;
layout(location = 1) in vec2 texture_coord;
out vec2 texCoord;

uniform mat4 modelMat;
uniform mat4 projMat;
uniform float zLayer; 

void main() {
   texCoord = texture_coord;
   gl_Position = projMat * modelMat * vec4(vertex_position, zLayer, 1.0);
}