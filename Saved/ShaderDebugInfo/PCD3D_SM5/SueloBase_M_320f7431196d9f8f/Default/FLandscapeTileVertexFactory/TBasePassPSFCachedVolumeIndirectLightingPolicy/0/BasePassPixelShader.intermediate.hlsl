#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _205 = 0.0f;
static float4 _206 = 0.0f.xxxx;

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
    float4 _244 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _248 = mad(float2(_244.zw), 2.0f.xx, (-1.0f).xx);
    float _252 = sqrt(max(1.0f - dot(_248, _248), 0.0f));
    float _253 = _248.x;
    float3 _255 = float3(_253, _248.y, _252);
    float3 _258 = normalize(float3(_252, 0.0f, -_253));
    float4 _274 = float4(_205, _205, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _278 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _282 = _278.xyz / _278.w.xxx;
    float3 _283 = _282 - View_View_RelativePreViewTranslation;
    float4 _287 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _290 = dot(_287, Material_Material_PreshaderBuffer[1]);
    float _293 = dot(_287, Material_Material_PreshaderBuffer[2]);
    float _297 = dot(_287, Material_Material_PreshaderBuffer[3]);
    float2 _299 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _305 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _299, View_View_MaterialTextureMipBias);
    float2 _307 = mad(_305.xy, 2.0f.xx, (-1.0f).xx);
    float2 _315 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _319 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _315, View_View_MaterialTextureMipBias);
    float _345 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _345 = _274.w;
            break;
        }
        else
        {
            float _330 = _274.z;
            _345 = mad(_330, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_330, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _350 = float4(_307, sqrt(clamp(1.0f - dot(_307, _307), 0.0f, 1.0f)), 1.0f).xyz;
    float3 _351 = clamp(((lerp(-2000.0f, 2000.0f, _319.y) + _345) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _353 = _290.xxx;
    float2 _359 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _299, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _378 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _315, View_View_MaterialTextureMipBias).x) + _345) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _380 = _293.xxx;
    float3 _389 = clamp(((lerp(-2000.0f, 2000.0f, _319.x) + _345) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _391 = _297.xxx;
    float3 _400 = normalize(mul(normalize((mad(lerp(_350, float3(0.0f, 0.0f, 1.0f), _389), _391, mad(lerp(_350, float3(0.0f, 0.0f, 1.0f), _351), _353, lerp(float4(_359, sqrt(clamp(1.0f - dot(_359, _359), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _378) * _380)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_258, cross(_255, _258), _255), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _426 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float4 _428 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _426, View_View_MaterialTextureMipBias);
    float3 _433 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _299, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _428.y), 0.0f, 1.0f).xxx);
    float2 _443 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float3 _449 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _443, View_View_MaterialTextureMipBias).x.xxx;
    float3 _457 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _299, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz;
    float3 _462 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz;
    float3 _470 = lerp(_457, _462 * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _426, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float3 _476 = lerp(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _315, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx);
    float3 _492 = lerp(_457, _462 * float3(0.125f, 0.067635647952556610107421875f, 0.013073840178549289703369140625f), clamp(lerp(-0.25f, 2.0f, _428.x), 0.0f, 1.0f).xxx);
    float3 _496 = clamp(mad(lerp(_492, lerp(_492, _476, _449), _389), _391, mad(lerp(_433, lerp(_433, lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _315, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _449), _351), _353, lerp(_470, lerp(_470, _476, Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _443, View_View_MaterialTextureMipBias).x.xxx), _378) * _380)), 0.0f.xxx, 1.0f.xxx);
    float _500 = mad(clamp((_290 + _293) + _297, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _542 = 0.0f;
    float _543 = 0.0f;
    float _544 = 0.0f;
    float3 _545 = 0.0f.xxx;
    float3 _546 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _514 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _518 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _514, 0.0f);
        float4 _521 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _514, 0.0f);
        float4 _524 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _514, 0.0f);
        float _534 = _524.w;
        _542 = mad(_500, _534, _524.z);
        _543 = mad(0.5f, _534, _524.y);
        _544 = _524.x;
        _545 = (_496 * _518.w) + _518.xyz;
        _546 = normalize((_400 * _521.w) + ((_521.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _542 = _500;
        _543 = 0.5f;
        _544 = 0.0f;
        _545 = _496;
        _546 = _400;
    }
    bool _559 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _565 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _559)
    {
        _565 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _565 = 1.0f;
    }
    float _612 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _580 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _283, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _591 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_580.x), int(_580.y), int(_580.z), 0).xyz, 0)));
        _612 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_591.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_580 / _591.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _612 = _565;
    }
    float3 _625 = ((_545 - (_545 * _544)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _632 = (lerp((0.07999999821186065673828125f * _543).xxx, _545, _544.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _635 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _640 = 0.0f.xxx;
    if (_635)
    {
        _640 = _625 + (_632 * 0.449999988079071044921875f);
    }
    else
    {
        _640 = _625;
    }
    bool3 _641 = _635.xxx;
    float3 _642 = float3(_641.x ? 0.0f.xxx.x : _632.x, _641.y ? 0.0f.xxx.y : _632.y, _641.z ? 0.0f.xxx.z : _632.z);
    float3 _644 = dot(_642, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _719 = 0.0f.xxx;
    if (_559)
    {
        float3 _671 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _283, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _675 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _671);
        float4 _679 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _671);
        float4 _682 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _671);
        float4 _700 = 0.0f.xxxx;
        _700.y = (-0.48860299587249755859375f) * _546.y;
        _700.z = 0.48860299587249755859375f * _546.z;
        _700.w = (-0.48860299587249755859375f) * _546.x;
        _700.x = 0.886227548122406005859375f;
        float3 _709 = _700.yzw * 2.094395160675048828125f;
        float4 _710 = float4(_700.x, _709.x, _709.y, _709.z);
        float3 _712 = 0.0f.xxx;
        _712.x = dot(float4(_675.x, _679.x, _682.x, _675.w), _710);
        _712.y = dot(float4(_675.y, _679.y, _682.y, _679.w), _710);
        _712.z = dot(float4(_675.z, _679.z, _682.zw), _710);
        _719 = max(0.0f.xxx, _712) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _719 = 0.0f.xxx;
    }
    float3 _722 = _719 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _743 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _812 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        float3 _767 = abs(((View_View_ViewTilePosition - Primitive_Primitive_TilePosition) * 2097152.0f) + (_283 - Primitive_Primitive_ObjectRelativeWorldPositionAndRadius.xyz));
        float3 _768 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _811 = 0.0f.xxx;
        if (any(bool3(_767.x > _768.x, _767.y > _768.y, _767.z > _768.z)))
        {
            float3 _791 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _792 = _283 * 0.57700002193450927734375f.xxx;
            float3 _807 = frac(mad((_792.x + _792.y) + _792.z, 0.00200000009499490261077880859375f, frac(((_791.x + _791.y) + _791.z) * 4194.30419921875f))).xxx;
            _811 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_807.x > 0.5f.xxx.x, _807.y > 0.5f.xxx.y, _807.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _790 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _778 = abs(_282 - in_var_TEXCOORD9);
                _790 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_778.x, max(_778.y, _778.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _790 = _743;
            }
            _811 = _790;
        }
        _812 = _811;
    }
    else
    {
        _812 = _743;
    }
    float4 _819 = float4((mad(_722 * _640, max(1.0f.xxx, ((((((_545 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_545 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_545 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _640 + (_642 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _812) * 1.0f, 0.0f);
    float4 _826 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _825 = _819;
        _825.w = 0.0f;
        _826 = _825;
    }
    else
    {
        _826 = _819;
    }
    float2 _830 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _845 = (_546 * 0.5f) + 0.5f.xxx;
    float4 _847 = 0.0f.xxxx;
    _847.x = _845.x;
    _847.y = _845.y;
    _847.z = _845.z;
    _847.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _854 = 0.0f.xxxx;
    _854.x = _545.x;
    _854.y = _545.y;
    _854.z = _545.z;
    _854.w = mad(frac(dot(_830.xyx * _830.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_722, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_644 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_644 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_644 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _860 = 0.0f.xxxx;
    _860.x = _612;
    _860.y = 1.0f;
    _860.z = 1.0f;
    _860.w = 1.0f;
    float4 _865 = _826 * View_View_PreExposure;
    float3 _867 = min(_865.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_867.x, _867.y, _867.z, _865.w);
    out_var_SV_Target1 = _847;
    out_var_SV_Target2 = float4(_544, _543, _542, 0.50588238239288330078125f);
    out_var_SV_Target3 = _854;
    out_var_SV_Target5 = _860;
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
