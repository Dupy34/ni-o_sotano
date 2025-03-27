#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _212 = 0.0f;
static float4 _213 = 0.0f.xxxx;

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

StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
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
    float4 _251 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _255 = mad(float2(_251.zw), 2.0f.xx, (-1.0f).xx);
    float _259 = sqrt(max(1.0f - dot(_255, _255), 0.0f));
    float _260 = _255.x;
    float3 _262 = float3(_260, _255.y, _259);
    float3 _265 = normalize(float3(_259, 0.0f, -_260));
    float4 _281 = float4(_212, _212, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _285 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _289 = _285.xyz / _285.w.xxx;
    float3 _290 = _289 - View_View_RelativePreViewTranslation;
    float4 _294 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _297 = dot(_294, Material_Material_PreshaderBuffer[1]);
    float _300 = dot(_294, Material_Material_PreshaderBuffer[2]);
    float _304 = dot(_294, Material_Material_PreshaderBuffer[3]);
    float2 _306 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _312 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _306, View_View_MaterialTextureMipBias);
    float2 _314 = mad(_312.xy, 2.0f.xx, (-1.0f).xx);
    float2 _322 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _326 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _322, View_View_MaterialTextureMipBias);
    float _352 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _352 = _281.w;
            break;
        }
        else
        {
            float _337 = _281.z;
            _352 = mad(_337, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_337, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _357 = float4(_314, sqrt(clamp(1.0f - dot(_314, _314), 0.0f, 1.0f)), 1.0f).xyz;
    float3 _358 = clamp(((lerp(-2000.0f, 2000.0f, _326.y) + _352) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _360 = _297.xxx;
    float2 _366 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _306, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _385 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _322, View_View_MaterialTextureMipBias).x) + _352) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _387 = _300.xxx;
    float3 _396 = clamp(((lerp(-2000.0f, 2000.0f, _326.x) + _352) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _398 = _304.xxx;
    float3 _407 = normalize(mul(normalize((mad(lerp(_357, float3(0.0f, 0.0f, 1.0f), _396), _398, mad(lerp(_357, float3(0.0f, 0.0f, 1.0f), _358), _360, lerp(float4(_366, sqrt(clamp(1.0f - dot(_366, _366), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _385) * _387)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_265, cross(_262, _265), _262), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _433 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float4 _435 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _433, View_View_MaterialTextureMipBias);
    float3 _440 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _306, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _435.y), 0.0f, 1.0f).xxx);
    float2 _450 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float3 _456 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _450, View_View_MaterialTextureMipBias).x.xxx;
    float3 _464 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _306, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz;
    float3 _469 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz;
    float3 _477 = lerp(_464, _469 * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _433, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float3 _483 = lerp(Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _322, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx);
    float3 _499 = lerp(_464, _469 * float3(0.125f, 0.067635647952556610107421875f, 0.013073840178549289703369140625f), clamp(lerp(-0.25f, 2.0f, _435.x), 0.0f, 1.0f).xxx);
    float3 _503 = clamp(mad(lerp(_499, lerp(_499, _483, _456), _396), _398, mad(lerp(_440, lerp(_440, lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _322, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), _456), _358), _360, lerp(_477, lerp(_477, _483, Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _450, View_View_MaterialTextureMipBias).x.xxx), _385) * _387)), 0.0f.xxx, 1.0f.xxx);
    float _507 = mad(clamp((_297 + _300) + _304, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _508 = in_var_PRIMITIVE_ID * 41u;
    float _552 = 0.0f;
    float _553 = 0.0f;
    float _554 = 0.0f;
    float3 _555 = 0.0f.xxx;
    float3 _556 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_508].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _524 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _528 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _524, 0.0f);
        float4 _531 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _524, 0.0f);
        float4 _534 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _524, 0.0f);
        float _544 = _534.w;
        _552 = mad(_507, _544, _534.z);
        _553 = mad(0.5f, _544, _534.y);
        _554 = _534.x;
        _555 = (_503 * _528.w) + _528.xyz;
        _556 = normalize((_407 * _531.w) + ((_531.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _552 = _507;
        _553 = 0.5f;
        _554 = 0.0f;
        _555 = _503;
        _556 = _407;
    }
    uint _559 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_508].x);
    bool _575 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _581 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_508].x) & 2u) != 0u) && _575)
    {
        _581 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _581 = 1.0f;
    }
    float _631 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_508].x) & 4u) != 0u)
    {
        float3 _599 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _290, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _610 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_599.x), int(_599.y), int(_599.z), 0).xyz, 0)));
        _631 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_610.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_599 / _610.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _631 = _581;
    }
    float3 _644 = ((_555 - (_555 * _554)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _651 = (lerp((0.07999999821186065673828125f * _553).xxx, _555, _554.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _654 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _659 = 0.0f.xxx;
    if (_654)
    {
        _659 = _644 + (_651 * 0.449999988079071044921875f);
    }
    else
    {
        _659 = _644;
    }
    bool3 _660 = _654.xxx;
    float3 _661 = float3(_660.x ? 0.0f.xxx.x : _651.x, _660.y ? 0.0f.xxx.y : _651.y, _660.z ? 0.0f.xxx.z : _651.z);
    float3 _663 = dot(_661, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _738 = 0.0f.xxx;
    if (_575)
    {
        float3 _690 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _290, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _694 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _690);
        float4 _698 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _690);
        float4 _701 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _690);
        float4 _719 = 0.0f.xxxx;
        _719.y = (-0.48860299587249755859375f) * _556.y;
        _719.z = 0.48860299587249755859375f * _556.z;
        _719.w = (-0.48860299587249755859375f) * _556.x;
        _719.x = 0.886227548122406005859375f;
        float3 _728 = _719.yzw * 2.094395160675048828125f;
        float4 _729 = float4(_719.x, _728.x, _728.y, _728.z);
        float3 _731 = 0.0f.xxx;
        _731.x = dot(float4(_694.x, _698.x, _701.x, _694.w), _729);
        _731.y = dot(float4(_694.y, _698.y, _701.y, _698.w), _729);
        _731.z = dot(float4(_694.z, _698.z, _701.zw), _729);
        _738 = max(0.0f.xxx, _731) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _738 = 0.0f.xxx;
    }
    float3 _741 = _738 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _762 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _842 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _788 = _508 + 31u;
        float3 _797 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_508 + 1u].xyz) * 2097152.0f) + (_290 - Scene_GPUScene_GPUScenePrimitiveSceneData[_508 + 18u].xyz));
        float3 _798 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_508 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_508 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_508 + 25u].w) + 1.0f.xxx;
        float3 _841 = 0.0f.xxx;
        if (any(bool3(_797.x > _798.x, _797.y > _798.y, _797.z > _798.z)))
        {
            float3 _821 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _822 = _290 * 0.57700002193450927734375f.xxx;
            float3 _837 = frac(mad((_822.x + _822.y) + _822.z, 0.00200000009499490261077880859375f, frac(((_821.x + _821.y) + _821.z) * 4194.30419921875f))).xxx;
            _841 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_837.x > 0.5f.xxx.x, _837.y > 0.5f.xxx.y, _837.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _820 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_788].x > 0.0f)
            {
                float3 _808 = abs(_289 - in_var_TEXCOORD9);
                _820 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_808.x, max(_808.y, _808.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_788].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _820 = _762;
            }
            _841 = _820;
        }
        _842 = _841;
    }
    else
    {
        _842 = _762;
    }
    float4 _849 = float4((mad(_741 * _659, max(1.0f.xxx, ((((((_555 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_555 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_555 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _659 + (_661 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _842) * 1.0f, 0.0f);
    float4 _856 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _855 = _849;
        _855.w = 0.0f;
        _856 = _855;
    }
    else
    {
        _856 = _849;
    }
    float2 _860 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _875 = (_556 * 0.5f) + 0.5f.xxx;
    float4 _877 = 0.0f.xxxx;
    _877.x = _875.x;
    _877.y = _875.y;
    _877.z = _875.z;
    _877.w = mad(2.0f, float((_559 & 256u) != 0u), float((_559 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _884 = 0.0f.xxxx;
    _884.x = _555.x;
    _884.y = _555.y;
    _884.z = _555.z;
    _884.w = mad(frac(dot(_860.xyx * _860.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_741, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_663 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_663 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_663 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _890 = 0.0f.xxxx;
    _890.x = _631;
    _890.y = 1.0f;
    _890.z = 1.0f;
    _890.w = 1.0f;
    float4 _895 = _856 * View_View_PreExposure;
    float3 _897 = min(_895.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_897.x, _897.y, _897.z, _895.w);
    out_var_SV_Target1 = _877;
    out_var_SV_Target2 = float4(_554, _553, _552, 0.50588238239288330078125f);
    out_var_SV_Target3 = _884;
    out_var_SV_Target5 = _890;
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
