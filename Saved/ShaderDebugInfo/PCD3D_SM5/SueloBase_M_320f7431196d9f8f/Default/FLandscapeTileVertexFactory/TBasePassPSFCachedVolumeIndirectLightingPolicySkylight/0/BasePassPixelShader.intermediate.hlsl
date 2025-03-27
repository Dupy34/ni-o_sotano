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
    float4 _256 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _260 = mad(float2(_256.zw), 2.0f.xx, (-1.0f).xx);
    float _264 = sqrt(max(1.0f - dot(_260, _260), 0.0f));
    float _265 = _260.x;
    float3 _267 = float3(_265, _260.y, _264);
    float3 _270 = normalize(float3(_264, 0.0f, -_265));
    float4 _286 = float4(_214, _214, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _290 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _294 = _290.xyz / _290.w.xxx;
    float3 _295 = _294 - View_View_RelativePreViewTranslation;
    float4 _299 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _302 = dot(_299, Material_Material_PreshaderBuffer[1]);
    float _305 = dot(_299, Material_Material_PreshaderBuffer[2]);
    float _309 = dot(_299, Material_Material_PreshaderBuffer[3]);
    float2 _311 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _317 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _311, View_View_MaterialTextureMipBias);
    float2 _319 = mad(_317.xy, 2.0f.xx, (-1.0f).xx);
    float2 _327 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _331 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _327, View_View_MaterialTextureMipBias);
    float _357 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _357 = _286.w;
            break;
        }
        else
        {
            float _342 = _286.z;
            _357 = mad(_342, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_342, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _362 = float4(_319, sqrt(clamp(1.0f - dot(_319, _319), 0.0f, 1.0f)), 1.0f).xyz;
    float3 _363 = clamp(((lerp(-2000.0f, 2000.0f, _331.y) + _357) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _365 = _302.xxx;
    float2 _371 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _311, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _390 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _327, View_View_MaterialTextureMipBias).x) + _357) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _392 = _305.xxx;
    float3 _401 = clamp(((lerp(-2000.0f, 2000.0f, _331.x) + _357) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _403 = _309.xxx;
    float3 _412 = normalize(mul(normalize((mad(lerp(_362, float3(0.0f, 0.0f, 1.0f), _401), _403, mad(lerp(_362, float3(0.0f, 0.0f, 1.0f), _363), _365, lerp(float4(_371, sqrt(clamp(1.0f - dot(_371, _371), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _390) * _392)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_270, cross(_267, _270), _267), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _438 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float4 _440 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _438, View_View_MaterialTextureMipBias);
    float3 _445 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _311, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _440.y), 0.0f, 1.0f).xxx);
    float2 _455 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float3 _461 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _455, View_View_MaterialTextureMipBias).x.xxx;
    float3 _469 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _311, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz;
    float3 _474 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz;
    float3 _482 = lerp(_469, _474 * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _438, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float3 _488 = lerp(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _327, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx);
    float3 _504 = lerp(_469, _474 * float3(0.125f, 0.067635647952556610107421875f, 0.013073840178549289703369140625f), clamp(lerp(-0.25f, 2.0f, _440.x), 0.0f, 1.0f).xxx);
    float3 _508 = clamp(mad(lerp(_504, lerp(_504, _488, _461), _401), _403, mad(lerp(_445, lerp(_445, lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _327, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _461), _363), _365, lerp(_482, lerp(_482, _488, Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _455, View_View_MaterialTextureMipBias).x.xxx), _390) * _392)), 0.0f.xxx, 1.0f.xxx);
    float _512 = mad(clamp((_302 + _305) + _309, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _554 = 0.0f;
    float _555 = 0.0f;
    float _556 = 0.0f;
    float3 _557 = 0.0f.xxx;
    float3 _558 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _526 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _530 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _526, 0.0f);
        float4 _533 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _526, 0.0f);
        float4 _536 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _526, 0.0f);
        float _546 = _536.w;
        _554 = mad(_512, _546, _536.z);
        _555 = mad(0.5f, _546, _536.y);
        _556 = _536.x;
        _557 = (_508 * _530.w) + _530.xyz;
        _558 = normalize((_412 * _533.w) + ((_533.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _554 = _512;
        _555 = 0.5f;
        _556 = 0.0f;
        _557 = _508;
        _558 = _412;
    }
    bool _571 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _577 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _571)
    {
        _577 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _577 = 1.0f;
    }
    float _624 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _592 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _295, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _603 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_592.x), int(_592.y), int(_592.z), 0).xyz, 0)));
        _624 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_603.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_592 / _603.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _624 = _577;
    }
    float3 _637 = ((_557 - (_557 * _556)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _644 = (lerp((0.07999999821186065673828125f * _555).xxx, _557, _556.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _647 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _652 = 0.0f.xxx;
    if (_647)
    {
        _652 = _637 + (_644 * 0.449999988079071044921875f);
    }
    else
    {
        _652 = _637;
    }
    bool3 _653 = _647.xxx;
    float3 _654 = float3(_653.x ? 0.0f.xxx.x : _644.x, _653.y ? 0.0f.xxx.y : _644.y, _653.z ? 0.0f.xxx.z : _644.z);
    float3 _656 = dot(_654, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _731 = 0.0f.xxx;
    if (_571)
    {
        float3 _683 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _295, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _687 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _683);
        float4 _691 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _683);
        float4 _694 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _683);
        float4 _712 = 0.0f.xxxx;
        _712.y = (-0.48860299587249755859375f) * _558.y;
        _712.z = 0.48860299587249755859375f * _558.z;
        _712.w = (-0.48860299587249755859375f) * _558.x;
        _712.x = 0.886227548122406005859375f;
        float3 _721 = _712.yzw * 2.094395160675048828125f;
        float4 _722 = float4(_712.x, _721.x, _721.y, _721.z);
        float3 _724 = 0.0f.xxx;
        _724.x = dot(float4(_687.x, _691.x, _694.x, _687.w), _722);
        _724.y = dot(float4(_687.y, _691.y, _694.y, _691.w), _722);
        _724.z = dot(float4(_687.z, _691.z, _694.zw), _722);
        _731 = max(0.0f.xxx, _724) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _731 = 0.0f.xxx;
    }
    float3 _809 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _761 = 0.0f;
        float _762 = 0.0f;
        float3 _763 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _751 = 0.0f.xxx;
            float _752 = 0.0f;
            if (_571)
            {
                _751 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _752 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _751 = _558;
                _752 = 1.0f;
            }
            float _755 = mad(_752 - 1.0f, 1.0f - _752, 1.0f);
            _761 = lerp(clamp(dot(_751, _558), 0.0f, 1.0f), 1.0f, _755);
            _762 = _752;
            _763 = lerp(_751, _558, _755.xxx);
        }
        else
        {
            _761 = 1.0f;
            _762 = 1.0f;
            _763 = _558;
        }
        float4 _767 = float4(_763, 1.0f);
        float3 _771 = 0.0f.xxx;
        _771.x = dot(View_SkyIrradianceEnvironmentMap[0u], _767);
        _771.y = dot(View_SkyIrradianceEnvironmentMap[1u], _767);
        _771.z = dot(View_SkyIrradianceEnvironmentMap[2u], _767);
        float4 _782 = _767.xyzz * _767.yzzx;
        float3 _786 = 0.0f.xxx;
        _786.x = dot(View_SkyIrradianceEnvironmentMap[3u], _782);
        _786.y = dot(View_SkyIrradianceEnvironmentMap[4u], _782);
        _786.z = dot(View_SkyIrradianceEnvironmentMap[5u], _782);
        _809 = (max(0.0f.xxx, (_771 + _786) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_763.x, _763.x, -(_763.y * _763.y)))) * View_View_SkyLightColor.xyz) * (_762 * _761);
    }
    else
    {
        _809 = 0.0f.xxx;
    }
    float3 _810 = mad(_731, View_View_PrecomputedIndirectLightingColorScale, _809);
    float3 _831 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _900 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _855 = abs(((View_View_ViewTilePosition - Primitive_Primitive_TilePosition) * 2097152.0f) + (_295 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _856 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _899 = 0.0f.xxx;
        if (any(bool3(_855.x > _856.x, _855.y > _856.y, _855.z > _856.z)))
        {
            float3 _879 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _880 = _295 * 0.57700002193450927734375f.xxx;
            float3 _895 = frac(mad((_880.x + _880.y) + _880.z, 0.00200000009499490261077880859375f, frac(((_879.x + _879.y) + _879.z) * 4194.30419921875f))).xxx;
            _899 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_895.x > 0.5f.xxx.x, _895.y > 0.5f.xxx.y, _895.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _878 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _866 = abs(_294 - in_var_TEXCOORD9);
                _878 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_866.x, max(_866.y, _866.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _878 = _831;
            }
            _899 = _878;
        }
        _900 = _899;
    }
    else
    {
        _900 = _831;
    }
    float4 _907 = float4((mad(_810 * _652, max(1.0f.xxx, ((((((_557 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_557 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_557 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _652 + (_654 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _900) * 1.0f, 0.0f);
    float4 _914 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _913 = _907;
        _913.w = 0.0f;
        _914 = _913;
    }
    else
    {
        _914 = _907;
    }
    float2 _918 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _933 = (_558 * 0.5f) + 0.5f.xxx;
    float4 _935 = 0.0f.xxxx;
    _935.x = _933.x;
    _935.y = _933.y;
    _935.z = _933.z;
    _935.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _942 = 0.0f.xxxx;
    _942.x = _557.x;
    _942.y = _557.y;
    _942.z = _557.z;
    _942.w = mad(frac(dot(_918.xyx * _918.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_810, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_656 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_656 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_656 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _948 = 0.0f.xxxx;
    _948.x = _624;
    _948.y = 1.0f;
    _948.z = 1.0f;
    _948.w = 1.0f;
    float4 _953 = _914 * View_View_PreExposure;
    float3 _955 = min(_953.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_955.x, _955.y, _955.z, _953.w);
    out_var_SV_Target1 = _935;
    out_var_SV_Target2 = float4(_556, _555, _554, 0.50588238239288330078125f);
    out_var_SV_Target3 = _942;
    out_var_SV_Target5 = _948;
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
