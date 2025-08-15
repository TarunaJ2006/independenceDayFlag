
uniform float uTime;

attribute float aRandom;


uniform vec2 uFrequency;

varying float vRandom;

varying vec2 vUv;

varying float vElevation;



void main() {
    float x = sin(uTime) > 0.0 ? sin(uTime) : -sin(uTime);
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vElevation = sin(modelPosition.x * uFrequency.x + uTime) * 0.1;
    vElevation += sin(modelPosition.y * uFrequency.y + uTime) * 0.1;

    modelPosition.z += vElevation;


    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;
    
    gl_Position = projectionPosition;
    vRandom = aRandom;
    vUv = uv;
}