#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _131 = 0.0f;

cbuffer View
{
    row_major float4x4 View_View_TranslatedWorldToView : packoffset(c12);
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c67);
    float4 View_View_NormalOverrideParameter : packoffset(c135);
    float View_View_MaterialTextureMipBias : packoffset(c140);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[11] : packoffset(c0);
};

SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
SamplerState Material_Texture2D_12Sampler;
Texture2D<float4> Material_Texture2D_13;
SamplerState Material_Texture2D_13Sampler;
Texture2D<float4> Material_Texture2D_14;
SamplerState Material_Texture2D_14Sampler;
Texture2D<float4> Material_Texture2D_15;
SamplerState Material_Texture2D_15Sampler;
Texture2D<float4> Material_Texture2D_16;
SamplerState Material_Texture2D_16Sampler;
Texture2D<float4> Material_Texture2D_17;
SamplerState Material_Texture2D_17Sampler;
Texture2D<float4> Material_Texture2D_18;
SamplerState Material_Texture2D_18Sampler;
Texture2D<float4> Material_Texture2D_19;
SamplerState Material_Texture2D_19Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static uint in_var_PRIMITIVE_ID;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
};

void frag_main()
{
    float4 _148 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _152 = mad(float2(_148.zw), 2.0f.xx, (-1.0f).xx);
    float _156 = sqrt(max(1.0f - dot(_152, _152), 0.0f));
    float _157 = _152.x;
    float3 _159 = float3(_157, _152.y, _156);
    float3 _162 = normalize(float3(_156, 0.0f, -_157));
    float4 _177 = float4(_131, _131, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _181 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _191 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _197 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _191, View_View_MaterialTextureMipBias);
    float2 _199 = mad(_197.xy, 2.0f.xx, (-1.0f).xx);
    float2 _207 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _211 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _207, View_View_MaterialTextureMipBias);
    float _237 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _237 = _177.w;
            break;
        }
        else
        {
            float _222 = _177.z;
            _237 = mad(_222, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_222, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _243 = clamp(((lerp(-2000.0f, 2000.0f, _211.y) + _237) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _245 = dot(_181, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _251 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _191, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _270 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _207, View_View_MaterialTextureMipBias).x) + _237) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _272 = dot(_181, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _280 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _191, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _299 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _207, View_View_MaterialTextureMipBias).z) + _237) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _301 = dot(_181, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _310 = normalize(mul(normalize((mad(lerp(float4(_280, sqrt(clamp(1.0f - dot(_280, _280), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _299), _301, mad(lerp(float4(_199, sqrt(clamp(1.0f - dot(_199, _199), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _243), _245, lerp(float4(_251, sqrt(clamp(1.0f - dot(_251, _251), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _270) * _272)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_162, cross(_159, _162), _159), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _340 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx, View_View_MaterialTextureMipBias);
    float3 _345 = lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _191, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _340.y), 0.0f, 1.0f).xxx);
    float4 _349 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _207, View_View_MaterialTextureMipBias);
    float2 _355 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _359 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _355, View_View_MaterialTextureMipBias);
    float3 _380 = lerp(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _191, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _340.x), 0.0f, 1.0f).xxx);
    float4 _384 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _207, View_View_MaterialTextureMipBias);
    float4 _390 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _355, View_View_MaterialTextureMipBias);
    float3 _413 = lerp(Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, _191, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _340.z), 0.0f, 1.0f).xxx);
    float4 _417 = Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _207, View_View_MaterialTextureMipBias);
    float4 _423 = Material_Texture2D_19.SampleBias(Material_Texture2D_19Sampler, _355, View_View_MaterialTextureMipBias);
    uint3 _433 = asuint(_310) & uint3(2139095040u, 2139095040u, 2139095040u);
    float3 _445 = 0.0f.xxx;
    if (all(bool3(_433.x != uint3(2139095040u, 2139095040u, 2139095040u).x, _433.y != uint3(2139095040u, 2139095040u, 2139095040u).y, _433.z != uint3(2139095040u, 2139095040u, 2139095040u).z)))
    {
        _445 = mul(float4(normalize(_310), 0.0f), View_View_TranslatedWorldToView).xyz;
    }
    else
    {
        _445 = float3(0.0f, 0.0f, 1.0f);
    }
    out_var_SV_Target0 = float4(sqrt(clamp(mad(lerp(_413, lerp(_413, lerp(_417.xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _423.x.xxx), _299), _301, mad(lerp(_345, lerp(_345, lerp(_349.xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _359.x.xxx), _243), _245, lerp(_380, lerp(_380, lerp(_384.xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _390.x.xxx), _270) * _272)), 0.0f.xxx, 1.0f.xxx) + 0.017999999225139617919921875f.xxx), 1.0f);
    out_var_SV_Target1 = float4((_445.xy * 0.5f) + 0.5f.xx, 0.0f, 1.0f);
    out_var_SV_Target2 = float4(max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx), 0.0f);
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    return stage_output;
}
