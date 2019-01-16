shader_type canvas_item;

uniform vec2 center;
uniform float radius;
uniform float textureHeight;

void fragment() {
    vec2 realCenter = vec2(center.x, textureHeight - center.y);
    vec2 p = (FRAGCOORD.xy  - realCenter) / radius;
    float r = sqrt(dot(p, p));

    vec4 color0 = vec4(1.0,1.0,1.0,1.0);
    vec4 color1 = vec4(0.5,0.5,0.5,0.6);
    vec4 color2 = vec4(0,0,0,0);

    float colorStop0 = 0.0;
    float colorStop1 = 0.8;
    float colorStop2 = 1.0;
	
	vec4 color;
    if (r <= colorStop1)
    {
        color = mix(color0, color1, (r - colorStop0)/(colorStop1 - colorStop0));
    }
    else
    {
        color = mix(color1, color2, (r - colorStop1)/(colorStop2 - colorStop1));
    }

	COLOR = color;
}
