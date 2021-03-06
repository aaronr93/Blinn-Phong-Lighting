#version 130

uniform mat4 u_modelMatrix;

in vec3 vs_color;
in vec4 vs_position;

out vec3 fs_color;

void main() { 
  //gl_Position is built-in
  fs_color = vs_color;
  gl_Position = u_modelMatrix * vs_position;
}