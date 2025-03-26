#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _187 = 0.0f;

cbuffer View
{
    row_major float4x4 View_View_ViewToClip : packoffset(c28);
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c60);
    float4 View_View_InvDeviceZToWorldZTransform : packoffset(c67);
    float3 View_View_RelativePreViewTranslation : packoffset(c72);
    float4 View_View_BufferSizeAndInvSize : packoffset(c128);
    float View_View_PreExposure : packoffset(c132.z);
    float4 View_View_DiffuseOverrideParameter : packoffset(c133);
    float4 View_View_SpecularOverrideParameter : packoffset(c134);
    float4 View_View_NormalOverrideParameter : packoffset(c135);
    float2 View_View_RoughnessOverrideParameter : packoffset(c136);
    float View_View_OutOfBoundsMask : packoffset(c137);
    float View_View_MaterialTextureMipBias : packoffset(c140);
    float View_View_UnlitViewmodeMask : packoffset(c142.z);
    float View_View_RenderingReflectionCaptureMask : packoffset(c179.w);
    float View_View_ShowDecalsMask : packoffset(c192.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c224.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c231);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c232);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c233);
    float View_View_VolumetricLightmapBrickSize : packoffset(c233.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c234);
};

StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[11] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
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

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static uint in_var_PRIMITIVE_ID;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static float4 out_var_SV_Target3;
static float4 out_var_SV_Target5;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    float4 out_var_SV_Target3 : SV_Target3;
    float4 out_var_SV_Target5 : SV_Target5;
};

void frag_main()
{
    float4 _223 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _227 = mad(float2(_223.zw), 2.0f.xx, (-1.0f).xx);
    float _231 = sqrt(max(1.0f - dot(_227, _227), 0.0f));
    float _232 = _227.x;
    float3 _234 = float3(_232, _227.y, _231);
    float3 _237 = normalize(float3(_231, 0.0f, -_232));
    float4 _253 = float4(_187, _187, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _257 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _261 = _257.xyz / _257.w.xxx;
    float3 _262 = _261 - View_View_RelativePreViewTranslation;
    float4 _266 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _269 = dot(_266, Material_Material_PreshaderBuffer[1]);
    float _272 = dot(_266, Material_Material_PreshaderBuffer[2]);
    float _276 = dot(_266, Material_Material_PreshaderBuffer[3]);
    float2 _277 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _283 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _277, View_View_MaterialTextureMipBias);
    float2 _285 = mad(_283.xy, 2.0f.xx, (-1.0f).xx);
    float2 _293 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _297 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _293, View_View_MaterialTextureMipBias);
    float _323 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _323 = _253.w;
            break;
        }
        else
        {
            float _308 = _253.z;
            _323 = mad(_308, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_308, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _329 = clamp(((lerp(-2000.0f, 2000.0f, _297.y) + _323) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _331 = _269.xxx;
    float2 _337 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _277, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _356 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _293, View_View_MaterialTextureMipBias).x) + _323) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _358 = _272.xxx;
    float2 _366 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _375 = _276.xxx;
    float3 _384 = normalize(mul(normalize((mad(float4(_366, sqrt(clamp(1.0f - dot(_366, _366), 0.0f, 1.0f)), 1.0f).xyz, _375, mad(lerp(float4(_285, sqrt(clamp(1.0f - dot(_285, _285), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _329), _331, lerp(float4(_337, sqrt(clamp(1.0f - dot(_337, _337), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _356) * _358)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_237, cross(_234, _237), _234), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _410 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float3 _417 = lerp(Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _277, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _410, View_View_MaterialTextureMipBias).y), 0.0f, 1.0f).xxx);
    float2 _427 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float3 _454 = lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _277, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _410, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float4 _480 = Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _483 = clamp(mad(Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz, _375, mad(lerp(_417, lerp(_417, lerp(Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _293, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _427, View_View_MaterialTextureMipBias).x.xxx), _329), _331, lerp(_454, lerp(_454, lerp(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _293, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _427, View_View_MaterialTextureMipBias).x.xxx), _356) * _358)), 0.0f.xxx, 1.0f.xxx);
    float _487 = mad(clamp(mad(_480.y, _276, _269 + _272), 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _488 = in_var_PRIMITIVE_ID * 41u;
    float _532 = 0.0f;
    float _533 = 0.0f;
    float _534 = 0.0f;
    float3 _535 = 0.0f.xxx;
    float3 _536 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_488].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _504 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _508 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _504, 0.0f);
        float4 _511 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _504, 0.0f);
        float4 _514 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _504, 0.0f);
        float _524 = _514.w;
        _532 = mad(_487, _524, _514.z);
        _533 = mad(0.5f, _524, _514.y);
        _534 = _514.x;
        _535 = (_483 * _508.w) + _508.xyz;
        _536 = normalize((_384 * _511.w) + ((_511.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _532 = _487;
        _533 = 0.5f;
        _534 = 0.0f;
        _535 = _483;
        _536 = _384;
    }
    uint _539 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_488].x);
    float _597 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_488].x) & 4u) != 0u)
    {
        float3 _565 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _262, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _576 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_565.x), int(_565.y), int(_565.z), 0).xyz, 0)));
        _597 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_576.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_565 / _576.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _597 = 1.0f;
    }
    float3 _610 = ((_535 - (_535 * _534)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _617 = (lerp((0.07999999821186065673828125f * _533).xxx, _535, _534.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _620 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _625 = 0.0f.xxx;
    if (_620)
    {
        _625 = _610 + (_617 * 0.449999988079071044921875f);
    }
    else
    {
        _625 = _610;
    }
    bool3 _626 = _620.xxx;
    float3 _634 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _714 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _660 = _488 + 31u;
        float3 _669 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 1u].xyz) * 2097152.0f) + (_262 - Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 18u].xyz));
        float3 _670 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 25u].w) + 1.0f.xxx;
        float3 _713 = 0.0f.xxx;
        if (any(bool3(_669.x > _670.x, _669.y > _670.y, _669.z > _670.z)))
        {
            float3 _693 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _694 = _262 * 0.57700002193450927734375f.xxx;
            float3 _709 = frac(mad((_694.x + _694.y) + _694.z, 0.00200000009499490261077880859375f, frac(((_693.x + _693.y) + _693.z) * 4194.30419921875f))).xxx;
            _713 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_709.x > 0.5f.xxx.x, _709.y > 0.5f.xxx.y, _709.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _692 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_660].x > 0.0f)
            {
                float3 _680 = abs(_261 - in_var_TEXCOORD9);
                _692 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_680.x, max(_680.y, _680.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_660].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _692 = _634;
            }
            _713 = _692;
        }
        _714 = _713;
    }
    else
    {
        _714 = _634;
    }
    float4 _720 = float4((lerp(0.0f.xxx, _625 + (float3(_626.x ? 0.0f.xxx.x : _617.x, _626.y ? 0.0f.xxx.y : _617.y, _626.z ? 0.0f.xxx.z : _617.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _714) * 1.0f, 0.0f);
    float4 _727 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _726 = _720;
        _726.w = 0.0f;
        _727 = _726;
    }
    else
    {
        _727 = _720;
    }
    float2 _731 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _740 = (_536 * 0.5f) + 0.5f.xxx;
    float4 _742 = 0.0f.xxxx;
    _742.x = _740.x;
    _742.y = _740.y;
    _742.z = _740.z;
    _742.w = mad(2.0f, float((_539 & 256u) != 0u), float((_539 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _749 = 0.0f.xxxx;
    _749.x = _535.x;
    _749.y = _535.y;
    _749.z = _535.z;
    _749.w = (frac(dot(_731.xyx * _731.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _755 = 0.0f.xxxx;
    _755.x = _597;
    _755.y = 1.0f;
    _755.z = 1.0f;
    _755.w = 1.0f;
    float4 _762 = _727 * View_View_PreExposure;
    float3 _764 = min(_762.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_764.x, _764.y, _764.z, _762.w);
    out_var_SV_Target1 = _742;
    out_var_SV_Target2 = float4(_534, _533, _532, 0.50588238239288330078125f);
    out_var_SV_Target3 = _749;
    out_var_SV_Target5 = _755;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    return stage_output;
}
