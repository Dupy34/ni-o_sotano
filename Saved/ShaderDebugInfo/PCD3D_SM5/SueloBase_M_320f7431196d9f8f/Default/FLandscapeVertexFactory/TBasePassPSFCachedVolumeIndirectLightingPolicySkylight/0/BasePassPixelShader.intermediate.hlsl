#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _216 = 0.0f.xxx;
static float _219 = 0.0f;
static float4 _220 = 0.0f.xxxx;

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
    float4 _259 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _263 = mad(float2(_259.zw), 2.0f.xx, (-1.0f).xx);
    float _267 = sqrt(max(1.0f - dot(_263, _263), 0.0f));
    float _268 = _263.x;
    float3 _270 = float3(_268, _263.y, _267);
    float3 _273 = normalize(float3(_267, 0.0f, -_268));
    float4 _289 = float4(_219, _219, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _293 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _297 = _293.xyz / _293.w.xxx;
    float3 _298 = _297 - View_View_RelativePreViewTranslation;
    float4 _302 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _305 = dot(_302, Material_Material_PreshaderBuffer[1]);
    float _308 = dot(_302, Material_Material_PreshaderBuffer[2]);
    float _312 = dot(_302, Material_Material_PreshaderBuffer[3]);
    float2 _314 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _320 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _314, View_View_MaterialTextureMipBias);
    float2 _322 = mad(_320.xy, 2.0f.xx, (-1.0f).xx);
    float2 _330 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _334 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _330, View_View_MaterialTextureMipBias);
    float _360 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _360 = _289.w;
            break;
        }
        else
        {
            float _345 = _289.z;
            _360 = mad(_345, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_345, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _365 = float4(_322, sqrt(clamp(1.0f - dot(_322, _322), 0.0f, 1.0f)), 1.0f).xyz;
    float3 _366 = clamp(((lerp(-2000.0f, 2000.0f, _334.y) + _360) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _368 = _305.xxx;
    float2 _374 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _314, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _393 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _330, View_View_MaterialTextureMipBias).x) + _360) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _395 = _308.xxx;
    float3 _404 = clamp(((lerp(-2000.0f, 2000.0f, _334.x) + _360) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _406 = _312.xxx;
    float3 _415 = normalize(mul(normalize((mad(lerp(_365, float3(0.0f, 0.0f, 1.0f), _404), _406, mad(lerp(_365, float3(0.0f, 0.0f, 1.0f), _366), _368, lerp(float4(_374, sqrt(clamp(1.0f - dot(_374, _374), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _393) * _395)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_273, cross(_270, _273), _270), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _441 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float4 _443 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _441, View_View_MaterialTextureMipBias);
    float3 _448 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _314, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _443.y), 0.0f, 1.0f).xxx);
    float2 _458 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float3 _464 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _458, View_View_MaterialTextureMipBias).x.xxx;
    float3 _472 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _314, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz;
    float3 _477 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz;
    float3 _485 = lerp(_472, _477 * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _441, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float3 _491 = lerp(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _330, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx);
    float3 _507 = lerp(_472, _477 * float3(0.125f, 0.067635647952556610107421875f, 0.013073840178549289703369140625f), clamp(lerp(-0.25f, 2.0f, _443.x), 0.0f, 1.0f).xxx);
    float3 _511 = clamp(mad(lerp(_507, lerp(_507, _491, _464), _404), _406, mad(lerp(_448, lerp(_448, lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _330, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _464), _366), _368, lerp(_485, lerp(_485, _491, Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _458, View_View_MaterialTextureMipBias).x.xxx), _393) * _395)), 0.0f.xxx, 1.0f.xxx);
    float _515 = mad(clamp((_305 + _308) + _312, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _516 = in_var_PRIMITIVE_ID * 41u;
    float _560 = 0.0f;
    float _561 = 0.0f;
    float _562 = 0.0f;
    float3 _563 = 0.0f.xxx;
    float3 _564 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_516].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _532 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _536 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _532, 0.0f);
        float4 _539 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _532, 0.0f);
        float4 _542 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _532, 0.0f);
        float _552 = _542.w;
        _560 = mad(_515, _552, _542.z);
        _561 = mad(0.5f, _552, _542.y);
        _562 = _542.x;
        _563 = (_511 * _536.w) + _536.xyz;
        _564 = normalize((_415 * _539.w) + ((_539.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _560 = _515;
        _561 = 0.5f;
        _562 = 0.0f;
        _563 = _511;
        _564 = _415;
    }
    uint _567 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_516].x);
    bool _583 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _589 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_516].x) & 2u) != 0u) && _583)
    {
        _589 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _589 = 1.0f;
    }
    float _639 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_516].x) & 4u) != 0u)
    {
        float3 _607 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _298, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _618 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_607.x), int(_607.y), int(_607.z), 0).xyz, 0)));
        _639 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_618.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_607 / _618.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _639 = _589;
    }
    float3 _652 = ((_563 - (_563 * _562)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _659 = (lerp((0.07999999821186065673828125f * _561).xxx, _563, _562.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _662 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _667 = 0.0f.xxx;
    if (_662)
    {
        _667 = _652 + (_659 * 0.449999988079071044921875f);
    }
    else
    {
        _667 = _652;
    }
    bool3 _668 = _662.xxx;
    float3 _669 = float3(_668.x ? 0.0f.xxx.x : _659.x, _668.y ? 0.0f.xxx.y : _659.y, _668.z ? 0.0f.xxx.z : _659.z);
    float3 _671 = dot(_669, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _746 = 0.0f.xxx;
    if (_583)
    {
        float3 _698 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _298, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _702 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _698);
        float4 _706 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _698);
        float4 _709 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _698);
        float4 _727 = 0.0f.xxxx;
        _727.y = (-0.48860299587249755859375f) * _564.y;
        _727.z = 0.48860299587249755859375f * _564.z;
        _727.w = (-0.48860299587249755859375f) * _564.x;
        _727.x = 0.886227548122406005859375f;
        float3 _736 = _727.yzw * 2.094395160675048828125f;
        float4 _737 = float4(_727.x, _736.x, _736.y, _736.z);
        float3 _739 = 0.0f.xxx;
        _739.x = dot(float4(_702.x, _706.x, _709.x, _702.w), _737);
        _739.y = dot(float4(_702.y, _706.y, _709.y, _706.w), _737);
        _739.z = dot(float4(_702.z, _706.z, _709.zw), _737);
        _746 = max(0.0f.xxx, _739) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _746 = 0.0f.xxx;
    }
    float3 _824 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _776 = 0.0f;
        float _777 = 0.0f;
        float3 _778 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _766 = 0.0f.xxx;
            float _767 = 0.0f;
            if (_583)
            {
                _766 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _767 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _766 = _564;
                _767 = 1.0f;
            }
            float _770 = mad(_767 - 1.0f, 1.0f - _767, 1.0f);
            _776 = lerp(clamp(dot(_766, _564), 0.0f, 1.0f), 1.0f, _770);
            _777 = _767;
            _778 = lerp(_766, _564, _770.xxx);
        }
        else
        {
            _776 = 1.0f;
            _777 = 1.0f;
            _778 = _564;
        }
        float4 _782 = float4(_778, 1.0f);
        float3 _786 = 0.0f.xxx;
        _786.x = dot(View_SkyIrradianceEnvironmentMap[0u], _782);
        _786.y = dot(View_SkyIrradianceEnvironmentMap[1u], _782);
        _786.z = dot(View_SkyIrradianceEnvironmentMap[2u], _782);
        float4 _797 = _782.xyzz * _782.yzzx;
        float3 _801 = 0.0f.xxx;
        _801.x = dot(View_SkyIrradianceEnvironmentMap[3u], _797);
        _801.y = dot(View_SkyIrradianceEnvironmentMap[4u], _797);
        _801.z = dot(View_SkyIrradianceEnvironmentMap[5u], _797);
        _824 = (max(0.0f.xxx, (_786 + _801) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_778.x, _778.x, -(_778.y * _778.y)))) * View_View_SkyLightColor.xyz) * (_777 * _776);
    }
    else
    {
        _824 = 0.0f.xxx;
    }
    float3 _825 = mad(_746, View_View_PrecomputedIndirectLightingColorScale, _824);
    float3 _846 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _926 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _872 = _516 + 31u;
        float3 _881 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_516 + 1u].xyz) * 2097152.0f) + (_298 - Scene_GPUScene_GPUScenePrimitiveSceneData[_516 + 18u].xyz));
        float3 _882 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_516 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_516 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_516 + 25u].w) + 1.0f.xxx;
        float3 _925 = 0.0f.xxx;
        if (any(bool3(_881.x > _882.x, _881.y > _882.y, _881.z > _882.z)))
        {
            float3 _905 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _906 = _298 * 0.57700002193450927734375f.xxx;
            float3 _921 = frac(mad((_906.x + _906.y) + _906.z, 0.00200000009499490261077880859375f, frac(((_905.x + _905.y) + _905.z) * 4194.30419921875f))).xxx;
            _925 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_921.x > 0.5f.xxx.x, _921.y > 0.5f.xxx.y, _921.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _904 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_872].x > 0.0f)
            {
                float3 _892 = abs(_297 - in_var_TEXCOORD9);
                _904 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_892.x, max(_892.y, _892.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_872].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _904 = _846;
            }
            _925 = _904;
        }
        _926 = _925;
    }
    else
    {
        _926 = _846;
    }
    float4 _933 = float4((mad(_825 * _667, max(1.0f.xxx, ((((((_563 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_563 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_563 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _667 + (_669 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _926) * 1.0f, 0.0f);
    float4 _940 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _939 = _933;
        _939.w = 0.0f;
        _940 = _939;
    }
    else
    {
        _940 = _933;
    }
    float2 _944 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _959 = (_564 * 0.5f) + 0.5f.xxx;
    float4 _961 = 0.0f.xxxx;
    _961.x = _959.x;
    _961.y = _959.y;
    _961.z = _959.z;
    _961.w = mad(2.0f, float((_567 & 256u) != 0u), float((_567 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _968 = 0.0f.xxxx;
    _968.x = _563.x;
    _968.y = _563.y;
    _968.z = _563.z;
    _968.w = mad(frac(dot(_944.xyx * _944.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_825, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_671 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_671 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_671 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _974 = 0.0f.xxxx;
    _974.x = _639;
    _974.y = 1.0f;
    _974.z = 1.0f;
    _974.w = 1.0f;
    float4 _979 = _940 * View_View_PreExposure;
    float3 _981 = min(_979.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_981.x, _981.y, _981.z, _979.w);
    out_var_SV_Target1 = _961;
    out_var_SV_Target2 = float4(_562, _561, _560, 0.50588238239288330078125f);
    out_var_SV_Target3 = _968;
    out_var_SV_Target5 = _974;
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
