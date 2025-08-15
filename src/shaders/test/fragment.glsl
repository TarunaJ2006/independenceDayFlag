uniform vec3 uColor;
uniform sampler2D uTexture;
varying vec2 vUv;

varying float vRandom;
varying float vElevation;

void main()
{
    vec4 textureColor = texture2D(uTexture, vUv);
    vec4 color = vec4(uColor, 1.0);
    color += textureColor;
    color += vElevation * 1.5 ;

    gl_FragColor = color;
}