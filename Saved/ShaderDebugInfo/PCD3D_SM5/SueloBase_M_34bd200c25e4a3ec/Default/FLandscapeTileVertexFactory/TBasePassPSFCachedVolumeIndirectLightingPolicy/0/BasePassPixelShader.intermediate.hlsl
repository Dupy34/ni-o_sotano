#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _200 = 0.0f;
static float4 _201 = 0.0f.xxxx;

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
    float View_View_ShowDecalsMask : packoffset(c192.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c224.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c231);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c232);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c233);
    float View_View_VolumetricLightmapBrickSize : packoffset(c233.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c234);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c234.w);
};

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

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
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
    float4 _239 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _243 = mad(float2(_239.zw), 2.0f.xx, (-1.0f).xx);
    float _247 = sqrt(max(1.0f - dot(_243, _243), 0.0f));
    float _248 = _243.x;
    float3 _250 = float3(_248, _243.y, _247);
    float3 _253 = normalize(float3(_247, 0.0f, -_248));
    float4 _269 = float4(_200, _200, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _273 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _277 = _273.xyz / _273.w.xxx;
    float3 _278 = _277 - View_View_RelativePreViewTranslation;
    float4 _282 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _285 = dot(_282, Material_Material_PreshaderBuffer[1]);
    float _288 = dot(_282, Material_Material_PreshaderBuffer[2]);
    float2 _290 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _296 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _290, View_View_MaterialTextureMipBias);
    float2 _298 = mad(_296.xy, 2.0f.xx, (-1.0f).xx);
    float2 _306 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _310 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _306, View_View_MaterialTextureMipBias);
    float _336 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _336 = _269.w;
            break;
        }
        else
        {
            float _321 = _269.z;
            _336 = mad(_321, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_321, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _342 = clamp(((lerp(-2000.0f, 2000.0f, _310.y) + _336) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _344 = _285.xxx;
    float2 _350 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _290, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _369 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _306, View_View_MaterialTextureMipBias).x) + _336) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _371 = _288.xxx;
    float3 _381 = normalize(mul(normalize((mad(lerp(float4(_298, sqrt(clamp(1.0f - dot(_298, _298), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _342), _344, lerp(float4(_350, sqrt(clamp(1.0f - dot(_350, _350), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _369) * _371) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_253, cross(_250, _253), _250), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _407 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float3 _414 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _290, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _407, View_View_MaterialTextureMipBias).y), 0.0f, 1.0f).xxx);
    float4 _418 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _306, View_View_MaterialTextureMipBias);
    float2 _424 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _428 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _424, View_View_MaterialTextureMipBias);
    float3 _451 = lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _290, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _407, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float4 _455 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _306, View_View_MaterialTextureMipBias);
    float4 _461 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _424, View_View_MaterialTextureMipBias);
    float3 _468 = clamp(mad(lerp(_414, lerp(_414, lerp(_418.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _428.x.xxx), _342), _344, lerp(_451, lerp(_451, lerp(_455.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _461.x.xxx), _369) * _371), 0.0f.xxx, 1.0f.xxx);
    float _472 = mad(clamp(_285 + _288, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _514 = 0.0f;
    float _515 = 0.0f;
    float _516 = 0.0f;
    float3 _517 = 0.0f.xxx;
    float3 _518 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _486 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _490 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _486, 0.0f);
        float4 _493 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _486, 0.0f);
        float4 _496 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _486, 0.0f);
        float _506 = _496.w;
        _514 = mad(_472, _506, _496.z);
        _515 = mad(0.5f, _506, _496.y);
        _516 = _496.x;
        _517 = (_468 * _490.w) + _490.xyz;
        _518 = normalize((_381 * _493.w) + ((_493.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _514 = _472;
        _515 = 0.5f;
        _516 = 0.0f;
        _517 = _468;
        _518 = _381;
    }
    bool _531 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _537 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _531)
    {
        _537 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _537 = 1.0f;
    }
    float _584 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _552 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _278, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _563 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_552.x), int(_552.y), int(_552.z), 0).xyz, 0)));
        _584 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_563.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_552 / _563.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _584 = _537;
    }
    float3 _597 = ((_517 - (_517 * _516)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _604 = (lerp((0.07999999821186065673828125f * _515).xxx, _517, _516.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _607 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _612 = 0.0f.xxx;
    if (_607)
    {
        _612 = _597 + (_604 * 0.449999988079071044921875f);
    }
    else
    {
        _612 = _597;
    }
    bool3 _613 = _607.xxx;
    float3 _614 = float3(_613.x ? 0.0f.xxx.x : _604.x, _613.y ? 0.0f.xxx.y : _604.y, _613.z ? 0.0f.xxx.z : _604.z);
    float3 _616 = dot(_614, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _691 = 0.0f.xxx;
    if (_531)
    {
        float3 _643 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _278, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _647 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _643);
        float4 _651 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _643);
        float4 _654 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _643);
        float4 _672 = 0.0f.xxxx;
        _672.y = (-0.48860299587249755859375f) * _518.y;
        _672.z = 0.48860299587249755859375f * _518.z;
        _672.w = (-0.48860299587249755859375f) * _518.x;
        _672.x = 0.886227548122406005859375f;
        float3 _681 = _672.yzw * 2.094395160675048828125f;
        float4 _682 = float4(_672.x, _681.x, _681.y, _681.z);
        float3 _684 = 0.0f.xxx;
        _684.x = dot(float4(_647.x, _651.x, _654.x, _647.w), _682);
        _684.y = dot(float4(_647.y, _651.y, _654.y, _651.w), _682);
        _684.z = dot(float4(_647.z, _651.z, _654.zw), _682);
        _691 = max(0.0f.xxx, _684) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _691 = 0.0f.xxx;
    }
    float3 _694 = _691 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _715 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx), 0.0f.xxx);
    float3 _784 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _739 = abs(((View_View_ViewTilePosition - Primitive_Primitive_TilePosition) * 2097152.0f) + (_278 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _740 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _783 = 0.0f.xxx;
        if (any(bool3(_739.x > _740.x, _739.y > _740.y, _739.z > _740.z)))
        {
            float3 _763 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _764 = _278 * 0.57700002193450927734375f.xxx;
            float3 _779 = frac(mad((_764.x + _764.y) + _764.z, 0.00200000009499490261077880859375f, frac(((_763.x + _763.y) + _763.z) * 4194.30419921875f))).xxx;
            _783 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_779.x > 0.5f.xxx.x, _779.y > 0.5f.xxx.y, _779.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _762 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _750 = abs(_277 - in_var_TEXCOORD9);
                _762 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_750.x, max(_750.y, _750.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _762 = _715;
            }
            _783 = _762;
        }
        _784 = _783;
    }
    else
    {
        _784 = _715;
    }
    float4 _791 = float4((mad(_694 * _612, max(1.0f.xxx, ((((((_517 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_517 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_517 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _612 + (_614 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _784) * 1.0f, 0.0f);
    float4 _798 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _797 = _791;
        _797.w = 0.0f;
        _798 = _797;
    }
    else
    {
        _798 = _791;
    }
    float2 _802 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _817 = (_518 * 0.5f) + 0.5f.xxx;
    float4 _819 = 0.0f.xxxx;
    _819.x = _817.x;
    _819.y = _817.y;
    _819.z = _817.z;
    _819.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _826 = 0.0f.xxxx;
    _826.x = _517.x;
    _826.y = _517.y;
    _826.z = _517.z;
    _826.w = mad(frac(dot(_802.xyx * _802.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_694, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_616 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_616 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_616 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _832 = 0.0f.xxxx;
    _832.x = _584;
    _832.y = 1.0f;
    _832.z = 1.0f;
    _832.w = 1.0f;
    float4 _837 = _798 * View_View_PreExposure;
    float3 _839 = min(_837.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_839.x, _839.y, _839.z, _837.w);
    out_var_SV_Target1 = _819;
    out_var_SV_Target2 = float4(_516, _515, _514, 0.50588238239288330078125f);
    out_var_SV_Target3 = _826;
    out_var_SV_Target5 = _832;
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
