//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

float rand(vec2 position);
float noise(vec2 position);

void main()
{
    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
	//gl_FragColor *= vec4(vec3(v_vPosition.x/512.0), 1.0);
	//gl_FragColor *= vec4(vec3(noise(v_vPosition)), 1.0);
	
	//float n = (noise(v_vPosition/16.0)*0.2 +noise(v_vPosition/32.0)*0.2+noise(v_vPosition/64.0)*0.3 +noise(v_vPosition/128.0)*0.3 );
	//gl_FragColor = vec4(vec3(n),1.0);
	if (mod(v_vPosition.x, 3.0) < 1.0) 
	{
		gl_FragColor *= vec4(1.0, 0.1, 0.1, 1.0);
	} else if (mod(v_vPosition.x, 3.0) < 2.0) 
	{
		gl_FragColor *= vec4(0.1, 1.0, 0.1, 1.0);
	}else if (mod(v_vPosition.x, 3.0) < 3.0) 
	{
		gl_FragColor *= vec4(0.1, 0.1, 1.0, 1.0);
	}
	
	//gl_FragColor += 0.1;
	//gl_FragColor *= 2.0;
	
	
	if (mod(v_vPosition.y, 3.0) < 1.0)
	{
		gl_FragColor *= vec4(0.25, 0.25, 0.25, 1.0);
	}
}

float rand(vec2 p)
{
	return fract(cos(dot(p, vec2(5.2375, 6.378)))*8463.648);
}

float noise(vec2 p)
{
	float x1 = rand(vec2(floor(p.x), floor(p.y)));
	float x2 = rand(vec2(ceil(p.x), ceil(p.y)));
	float top = mix(x1, x2, smoothstep(0.0, 0.1, fract(p.x)));
	
	x1 = rand(vec2(floor(p.x), ceil(p.y)));
	x2 = rand(vec2(ceil(p.x), ceil(p.y)));
	float bottom = mix(x1, x2, smoothstep(0.0, 0.1, fract(p.x)));
	
	return mix(top, bottom, smoothstep(0.0, 0.1, fract(p.y)));
}