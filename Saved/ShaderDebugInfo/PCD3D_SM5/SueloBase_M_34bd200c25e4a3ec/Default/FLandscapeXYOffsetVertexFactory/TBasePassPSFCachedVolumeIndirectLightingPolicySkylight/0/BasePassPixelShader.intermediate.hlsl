#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _211 = 0.0f.xxx;
static float _214 = 0.0f;
static float4 _215 = 0.0f.xxxx;

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
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c155);
    float View_View_RenderingReflectionCaptureMask : packoffset(c179.w);
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c182.y);
    float4 View_View_SkyLightColor : packoffset(c183);
    float View_View_ShowDecalsMask : packoffset(c192.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c224.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c231);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c232);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c233);
    float View_View_VolumetricLightmapBrickSize : packoffset(c233.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c234);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c234.w);
};

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c140);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[10] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
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
    float4 _254 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _258 = mad(float2(_254.zw), 2.0f.xx, (-1.0f).xx);
    float _262 = sqrt(max(1.0f - dot(_258, _258), 0.0f));
    float _263 = _258.x;
    float3 _265 = float3(_263, _258.y, _262);
    float3 _268 = normalize(float3(_262, 0.0f, -_263));
    float4 _284 = float4(_214, _214, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _288 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _292 = _288.xyz / _288.w.xxx;
    float3 _293 = _292 - View_View_RelativePreViewTranslation;
    float4 _297 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _300 = dot(_297, Material_Material_PreshaderBuffer[1]);
    float _303 = dot(_297, Material_Material_PreshaderBuffer[2]);
    float2 _305 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _311 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _305, View_View_MaterialTextureMipBias);
    float2 _313 = mad(_311.xy, 2.0f.xx, (-1.0f).xx);
    float2 _321 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _325 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _321, View_View_MaterialTextureMipBias);
    float _351 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _351 = _284.w;
            break;
        }
        else
        {
            float _336 = _284.z;
            _351 = mad(_336, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_336, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _357 = clamp(((lerp(-2000.0f, 2000.0f, _325.y) + _351) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _359 = _300.xxx;
    float2 _365 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _305, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _384 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _321, View_View_MaterialTextureMipBias).x) + _351) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _386 = _303.xxx;
    float3 _396 = normalize(mul(normalize((mad(lerp(float4(_313, sqrt(clamp(1.0f - dot(_313, _313), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _357), _359, lerp(float4(_365, sqrt(clamp(1.0f - dot(_365, _365), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _384) * _386) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_268, cross(_265, _268), _265), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _422 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float3 _429 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _305, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _422, View_View_MaterialTextureMipBias).y), 0.0f, 1.0f).xxx);
    float4 _433 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _321, View_View_MaterialTextureMipBias);
    float2 _439 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _443 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _439, View_View_MaterialTextureMipBias);
    float3 _466 = lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _305, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _422, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float4 _470 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _321, View_View_MaterialTextureMipBias);
    float4 _476 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _439, View_View_MaterialTextureMipBias);
    float3 _483 = clamp(mad(lerp(_429, lerp(_429, lerp(_433.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _443.x.xxx), _357), _359, lerp(_466, lerp(_466, lerp(_470.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _476.x.xxx), _384) * _386), 0.0f.xxx, 1.0f.xxx);
    float _487 = mad(clamp(_300 + _303, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
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
        _536 = normalize((_396 * _511.w) + ((_511.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _532 = _487;
        _533 = 0.5f;
        _534 = 0.0f;
        _535 = _483;
        _536 = _396;
    }
    uint _539 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_488].x);
    bool _555 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _561 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_488].x) & 2u) != 0u) && _555)
    {
        _561 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _561 = 1.0f;
    }
    float _611 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_488].x) & 4u) != 0u)
    {
        float3 _579 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _293, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _590 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_579.x), int(_579.y), int(_579.z), 0).xyz, 0)));
        _611 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_590.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_579 / _590.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _611 = _561;
    }
    float3 _624 = ((_535 - (_535 * _534)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _631 = (lerp((0.07999999821186065673828125f * _533).xxx, _535, _534.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _634 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _639 = 0.0f.xxx;
    if (_634)
    {
        _639 = _624 + (_631 * 0.449999988079071044921875f);
    }
    else
    {
        _639 = _624;
    }
    bool3 _640 = _634.xxx;
    float3 _641 = float3(_640.x ? 0.0f.xxx.x : _631.x, _640.y ? 0.0f.xxx.y : _631.y, _640.z ? 0.0f.xxx.z : _631.z);
    float3 _643 = dot(_641, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _718 = 0.0f.xxx;
    if (_555)
    {
        float3 _670 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _293, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _674 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _670);
        float4 _678 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _670);
        float4 _681 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _670);
        float4 _699 = 0.0f.xxxx;
        _699.y = (-0.48860299587249755859375f) * _536.y;
        _699.z = 0.48860299587249755859375f * _536.z;
        _699.w = (-0.48860299587249755859375f) * _536.x;
        _699.x = 0.886227548122406005859375f;
        float3 _708 = _699.yzw * 2.094395160675048828125f;
        float4 _709 = float4(_699.x, _708.x, _708.y, _708.z);
        float3 _711 = 0.0f.xxx;
        _711.x = dot(float4(_674.x, _678.x, _681.x, _674.w), _709);
        _711.y = dot(float4(_674.y, _678.y, _681.y, _678.w), _709);
        _711.z = dot(float4(_674.z, _678.z, _681.zw), _709);
        _718 = max(0.0f.xxx, _711) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _718 = 0.0f.xxx;
    }
    float3 _796 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _748 = 0.0f;
        float _749 = 0.0f;
        float3 _750 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _738 = 0.0f.xxx;
            float _739 = 0.0f;
            if (_555)
            {
                _738 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _739 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _738 = _536;
                _739 = 1.0f;
            }
            float _742 = mad(_739 - 1.0f, 1.0f - _739, 1.0f);
            _748 = lerp(clamp(dot(_738, _536), 0.0f, 1.0f), 1.0f, _742);
            _749 = _739;
            _750 = lerp(_738, _536, _742.xxx);
        }
        else
        {
            _748 = 1.0f;
            _749 = 1.0f;
            _750 = _536;
        }
        float4 _754 = float4(_750, 1.0f);
        float3 _758 = 0.0f.xxx;
        _758.x = dot(View_SkyIrradianceEnvironmentMap[0u], _754);
        _758.y = dot(View_SkyIrradianceEnvironmentMap[1u], _754);
        _758.z = dot(View_SkyIrradianceEnvironmentMap[2u], _754);
        float4 _769 = _754.xyzz * _754.yzzx;
        float3 _773 = 0.0f.xxx;
        _773.x = dot(View_SkyIrradianceEnvironmentMap[3u], _769);
        _773.y = dot(View_SkyIrradianceEnvironmentMap[4u], _769);
        _773.z = dot(View_SkyIrradianceEnvironmentMap[5u], _769);
        _796 = (max(0.0f.xxx, (_758 + _773) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_750.x, _750.x, -(_750.y * _750.y)))) * View_View_SkyLightColor.xyz) * (_749 * _748);
    }
    else
    {
        _796 = 0.0f.xxx;
    }
    float3 _797 = mad(_718, View_View_PrecomputedIndirectLightingColorScale, _796);
    float3 _818 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx), 0.0f.xxx);
    float3 _898 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _844 = _488 + 31u;
        float3 _853 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 1u].xyz) * 2097152.0f) + (_293 - Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 18u].xyz));
        float3 _854 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_488 + 25u].w) + 1.0f.xxx;
        float3 _897 = 0.0f.xxx;
        if (any(bool3(_853.x > _854.x, _853.y > _854.y, _853.z > _854.z)))
        {
            float3 _877 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _878 = _293 * 0.57700002193450927734375f.xxx;
            float3 _893 = frac(mad((_878.x + _878.y) + _878.z, 0.00200000009499490261077880859375f, frac(((_877.x + _877.y) + _877.z) * 4194.30419921875f))).xxx;
            _897 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_893.x > 0.5f.xxx.x, _893.y > 0.5f.xxx.y, _893.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _876 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_844].x > 0.0f)
            {
                float3 _864 = abs(_292 - in_var_TEXCOORD9);
                _876 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_864.x, max(_864.y, _864.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_844].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _876 = _818;
            }
            _897 = _876;
        }
        _898 = _897;
    }
    else
    {
        _898 = _818;
    }
    float4 _905 = float4((mad(_797 * _639, max(1.0f.xxx, ((((((_535 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_535 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_535 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _639 + (_641 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _898) * 1.0f, 0.0f);
    float4 _912 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _911 = _905;
        _911.w = 0.0f;
        _912 = _911;
    }
    else
    {
        _912 = _905;
    }
    float2 _916 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _931 = (_536 * 0.5f) + 0.5f.xxx;
    float4 _933 = 0.0f.xxxx;
    _933.x = _931.x;
    _933.y = _931.y;
    _933.z = _931.z;
    _933.w = mad(2.0f, float((_539 & 256u) != 0u), float((_539 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _940 = 0.0f.xxxx;
    _940.x = _535.x;
    _940.y = _535.y;
    _940.z = _535.z;
    _940.w = mad(frac(dot(_916.xyx * _916.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_797, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_643 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_643 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_643 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _946 = 0.0f.xxxx;
    _946.x = _611;
    _946.y = 1.0f;
    _946.z = 1.0f;
    _946.w = 1.0f;
    float4 _951 = _912 * View_View_PreExposure;
    float3 _953 = min(_951.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_953.x, _953.y, _953.z, _951.w);
    out_var_SV_Target1 = _933;
    out_var_SV_Target2 = float4(_534, _533, _532, 0.50588238239288330078125f);
    out_var_SV_Target3 = _940;
    out_var_SV_Target5 = _946;
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
