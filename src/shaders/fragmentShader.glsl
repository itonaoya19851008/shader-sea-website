uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
varying float vElevation;
uniform float uColorOffset;
uniform float uColorMultiplier;

void main(){
    float mixStrengthColor = (vElevation + uColorOffset)*uColorMultiplier;
    vec3 color = mix(uDepthColor,uSurfaceColor,mixStrengthColor);
    gl_FragColor = vec4(color,1.0);
}