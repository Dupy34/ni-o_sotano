#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _206 = 0.0f.xxx;
static float _209 = 0.0f;
static float4 _210 = 0.0f.xxxx;

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
cbuffer Primitive
{
    uint Primitive_Primitive_Flags : packoffset(c0);
    float3 Primitive_Primitive_TilePosition : packoffset(c1);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c22.w);
    float4 Primitive_Primitive_ObjectRelativeWorldPositionAndRadius : packoffset(c23);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c29.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c30.w);
    float Primitive_Primitive_MaxWPOExtent : packoffset(c37);
};

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
    float4 _251 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _255 = mad(float2(_251.zw), 2.0f.xx, (-1.0f).xx);
    float _259 = sqrt(max(1.0f - dot(_255, _255), 0.0f));
    float _260 = _255.x;
    float3 _262 = float3(_260, _255.y, _259);
    float3 _265 = normalize(float3(_259, 0.0f, -_260));
    float4 _281 = float4(_209, _209, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _285 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _289 = _285.xyz / _285.w.xxx;
    float3 _290 = _289 - View_View_RelativePreViewTranslation;
    float4 _294 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _297 = dot(_294, Material_Material_PreshaderBuffer[1]);
    float _300 = dot(_294, Material_Material_PreshaderBuffer[2]);
    float2 _302 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _308 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _302, View_View_MaterialTextureMipBias);
    float2 _310 = mad(_308.xy, 2.0f.xx, (-1.0f).xx);
    float2 _318 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _322 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _318, View_View_MaterialTextureMipBias);
    float _348 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _348 = _281.w;
            break;
        }
        else
        {
            float _333 = _281.z;
            _348 = mad(_333, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_333, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _354 = clamp(((lerp(-2000.0f, 2000.0f, _322.y) + _348) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _356 = _297.xxx;
    float2 _362 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _302, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _381 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _318, View_View_MaterialTextureMipBias).x) + _348) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _383 = _300.xxx;
    float3 _393 = normalize(mul(normalize((mad(lerp(float4(_310, sqrt(clamp(1.0f - dot(_310, _310), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _354), _356, lerp(float4(_362, sqrt(clamp(1.0f - dot(_362, _362), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _381) * _383) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_265, cross(_262, _265), _262), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _419 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float3 _426 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _302, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _419, View_View_MaterialTextureMipBias).y), 0.0f, 1.0f).xxx);
    float4 _430 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _318, View_View_MaterialTextureMipBias);
    float2 _436 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _440 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _436, View_View_MaterialTextureMipBias);
    float3 _463 = lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _302, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _419, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float4 _467 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _318, View_View_MaterialTextureMipBias);
    float4 _473 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _436, View_View_MaterialTextureMipBias);
    float3 _480 = clamp(mad(lerp(_426, lerp(_426, lerp(_430.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _440.x.xxx), _354), _356, lerp(_463, lerp(_463, lerp(_467.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _473.x.xxx), _381) * _383), 0.0f.xxx, 1.0f.xxx);
    float _484 = mad(clamp(_297 + _300, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _526 = 0.0f;
    float _527 = 0.0f;
    float _528 = 0.0f;
    float3 _529 = 0.0f.xxx;
    float3 _530 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _498 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _502 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _498, 0.0f);
        float4 _505 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _498, 0.0f);
        float4 _508 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _498, 0.0f);
        float _518 = _508.w;
        _526 = mad(_484, _518, _508.z);
        _527 = mad(0.5f, _518, _508.y);
        _528 = _508.x;
        _529 = (_480 * _502.w) + _502.xyz;
        _530 = normalize((_393 * _505.w) + ((_505.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _526 = _484;
        _527 = 0.5f;
        _528 = 0.0f;
        _529 = _480;
        _530 = _393;
    }
    bool _543 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _549 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _543)
    {
        _549 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _549 = 1.0f;
    }
    float _596 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _564 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _290, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _575 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_564.x), int(_564.y), int(_564.z), 0).xyz, 0)));
        _596 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_575.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_564 / _575.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _596 = _549;
    }
    float3 _609 = ((_529 - (_529 * _528)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _616 = (lerp((0.07999999821186065673828125f * _527).xxx, _529, _528.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _619 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _624 = 0.0f.xxx;
    if (_619)
    {
        _624 = _609 + (_616 * 0.449999988079071044921875f);
    }
    else
    {
        _624 = _609;
    }
    bool3 _625 = _619.xxx;
    float3 _626 = float3(_625.x ? 0.0f.xxx.x : _616.x, _625.y ? 0.0f.xxx.y : _616.y, _625.z ? 0.0f.xxx.z : _616.z);
    float3 _628 = dot(_626, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _703 = 0.0f.xxx;
    if (_543)
    {
        float3 _655 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _290, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _659 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _655);
        float4 _663 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _655);
        float4 _666 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _655);
        float4 _684 = 0.0f.xxxx;
        _684.y = (-0.48860299587249755859375f) * _530.y;
        _684.z = 0.48860299587249755859375f * _530.z;
        _684.w = (-0.48860299587249755859375f) * _530.x;
        _684.x = 0.886227548122406005859375f;
        float3 _693 = _684.yzw * 2.094395160675048828125f;
        float4 _694 = float4(_684.x, _693.x, _693.y, _693.z);
        float3 _696 = 0.0f.xxx;
        _696.x = dot(float4(_659.x, _663.x, _666.x, _659.w), _694);
        _696.y = dot(float4(_659.y, _663.y, _666.y, _663.w), _694);
        _696.z = dot(float4(_659.z, _663.z, _666.zw), _694);
        _703 = max(0.0f.xxx, _696) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _703 = 0.0f.xxx;
    }
    float3 _781 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _733 = 0.0f;
        float _734 = 0.0f;
        float3 _735 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _723 = 0.0f.xxx;
            float _724 = 0.0f;
            if (_543)
            {
                _723 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _724 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _723 = _530;
                _724 = 1.0f;
            }
            float _727 = mad(_724 - 1.0f, 1.0f - _724, 1.0f);
            _733 = lerp(clamp(dot(_723, _530), 0.0f, 1.0f), 1.0f, _727);
            _734 = _724;
            _735 = lerp(_723, _530, _727.xxx);
        }
        else
        {
            _733 = 1.0f;
            _734 = 1.0f;
            _735 = _530;
        }
        float4 _739 = float4(_735, 1.0f);
        float3 _743 = 0.0f.xxx;
        _743.x = dot(View_SkyIrradianceEnvironmentMap[0u], _739);
        _743.y = dot(View_SkyIrradianceEnvironmentMap[1u], _739);
        _743.z = dot(View_SkyIrradianceEnvironmentMap[2u], _739);
        float4 _754 = _739.xyzz * _739.yzzx;
        float3 _758 = 0.0f.xxx;
        _758.x = dot(View_SkyIrradianceEnvironmentMap[3u], _754);
        _758.y = dot(View_SkyIrradianceEnvironmentMap[4u], _754);
        _758.z = dot(View_SkyIrradianceEnvironmentMap[5u], _754);
        _781 = (max(0.0f.xxx, (_743 + _758) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_735.x, _735.x, -(_735.y * _735.y)))) * View_View_SkyLightColor.xyz) * (_734 * _733);
    }
    else
    {
        _781 = 0.0f.xxx;
    }
    float3 _782 = mad(_703, View_View_PrecomputedIndirectLightingColorScale, _781);
    float3 _803 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx), 0.0f.xxx);
    float3 _872 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _827 = abs(((View_View_ViewTilePosition - Primitive_Primitive_TilePosition) * 2097152.0f) + (_290 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _828 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _871 = 0.0f.xxx;
        if (any(bool3(_827.x > _828.x, _827.y > _828.y, _827.z > _828.z)))
        {
            float3 _851 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _852 = _290 * 0.57700002193450927734375f.xxx;
            float3 _867 = frac(mad((_852.x + _852.y) + _852.z, 0.00200000009499490261077880859375f, frac(((_851.x + _851.y) + _851.z) * 4194.30419921875f))).xxx;
            _871 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_867.x > 0.5f.xxx.x, _867.y > 0.5f.xxx.y, _867.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _850 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _838 = abs(_289 - in_var_TEXCOORD9);
                _850 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_838.x, max(_838.y, _838.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _850 = _803;
            }
            _871 = _850;
        }
        _872 = _871;
    }
    else
    {
        _872 = _803;
    }
    float4 _879 = float4((mad(_782 * _624, max(1.0f.xxx, ((((((_529 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_529 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_529 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _624 + (_626 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _872) * 1.0f, 0.0f);
    float4 _886 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _885 = _879;
        _885.w = 0.0f;
        _886 = _885;
    }
    else
    {
        _886 = _879;
    }
    float2 _890 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _905 = (_530 * 0.5f) + 0.5f.xxx;
    float4 _907 = 0.0f.xxxx;
    _907.x = _905.x;
    _907.y = _905.y;
    _907.z = _905.z;
    _907.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _914 = 0.0f.xxxx;
    _914.x = _529.x;
    _914.y = _529.y;
    _914.z = _529.z;
    _914.w = mad(frac(dot(_890.xyx * _890.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_782, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_628 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_628 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_628 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _920 = 0.0f.xxxx;
    _920.x = _596;
    _920.y = 1.0f;
    _920.z = 1.0f;
    _920.w = 1.0f;
    float4 _925 = _886 * View_View_PreExposure;
    float3 _927 = min(_925.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_927.x, _927.y, _927.z, _925.w);
    out_var_SV_Target1 = _907;
    out_var_SV_Target2 = float4(_528, _527, _526, 0.50588238239288330078125f);
    out_var_SV_Target3 = _914;
    out_var_SV_Target5 = _920;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
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
