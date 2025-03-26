#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _129 = 0.0f;

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
    float4 _146 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _150 = mad(float2(_146.zw), 2.0f.xx, (-1.0f).xx);
    float _154 = sqrt(max(1.0f - dot(_150, _150), 0.0f));
    float _155 = _150.x;
    float3 _157 = float3(_155, _150.y, _154);
    float3 _160 = normalize(float3(_154, 0.0f, -_155));
    float4 _175 = float4(_129, _129, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _179 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float2 _189 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _195 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _189, View_View_MaterialTextureMipBias);
    float2 _197 = mad(_195.xy, 2.0f.xx, (-1.0f).xx);
    float2 _205 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _209 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _205, View_View_MaterialTextureMipBias);
    float _235 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _235 = _175.w;
            break;
        }
        else
        {
            float _220 = _175.z;
            _235 = mad(_220, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_220, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _241 = clamp(((lerp(-2000.0f, 2000.0f, _209.y) + _235) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _243 = dot(_179, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _249 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _189, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _268 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _205, View_View_MaterialTextureMipBias).x) + _235) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _270 = dot(_179, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _278 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _189, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _297 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _205, View_View_MaterialTextureMipBias).z) + _235) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _299 = dot(_179, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _308 = normalize(mul(normalize((mad(lerp(float4(_278, sqrt(clamp(1.0f - dot(_278, _278), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _297), _299, mad(lerp(float4(_197, sqrt(clamp(1.0f - dot(_197, _197), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _241), _243, lerp(float4(_249, sqrt(clamp(1.0f - dot(_249, _249), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _268) * _270)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_160, cross(_157, _160), _157), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _334 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float3 _341 = lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _189, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _334, View_View_MaterialTextureMipBias).y), 0.0f, 1.0f).xxx);
    float4 _345 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _205, View_View_MaterialTextureMipBias);
    float2 _351 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _355 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _351, View_View_MaterialTextureMipBias);
    float3 _378 = lerp(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _189, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _334, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float4 _382 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _205, View_View_MaterialTextureMipBias);
    float4 _388 = Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _351, View_View_MaterialTextureMipBias);
    float3 _413 = lerp(Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _189, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _334, View_View_MaterialTextureMipBias).z), 0.0f, 1.0f).xxx);
    float4 _417 = Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, _205, View_View_MaterialTextureMipBias);
    float4 _423 = Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _351, View_View_MaterialTextureMipBias);
    uint3 _433 = asuint(_308) & uint3(2139095040u, 2139095040u, 2139095040u);
    float3 _445 = 0.0f.xxx;
    if (all(bool3(_433.x != uint3(2139095040u, 2139095040u, 2139095040u).x, _433.y != uint3(2139095040u, 2139095040u, 2139095040u).y, _433.z != uint3(2139095040u, 2139095040u, 2139095040u).z)))
    {
        _445 = mul(float4(normalize(_308), 0.0f), View_View_TranslatedWorldToView).xyz;
    }
    else
    {
        _445 = float3(0.0f, 0.0f, 1.0f);
    }
    out_var_SV_Target0 = float4(sqrt(clamp(mad(lerp(_413, lerp(_413, lerp(_417.xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _423.x.xxx), _297), _299, mad(lerp(_341, lerp(_341, lerp(_345.xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _355.x.xxx), _241), _243, lerp(_378, lerp(_378, lerp(_382.xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _388.x.xxx), _268) * _270)), 0.0f.xxx, 1.0f.xxx) + 0.017999999225139617919921875f.xxx), 1.0f);
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
