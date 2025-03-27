#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _207 = 0.0f;
static float4 _208 = 0.0f.xxxx;

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
    float4 _246 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _250 = mad(float2(_246.zw), 2.0f.xx, (-1.0f).xx);
    float _254 = sqrt(max(1.0f - dot(_250, _250), 0.0f));
    float _255 = _250.x;
    float3 _257 = float3(_255, _250.y, _254);
    float3 _260 = normalize(float3(_254, 0.0f, -_255));
    float4 _276 = float4(_207, _207, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _280 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _284 = _280.xyz / _280.w.xxx;
    float3 _285 = _284 - View_View_RelativePreViewTranslation;
    float4 _289 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _292 = dot(_289, Material_Material_PreshaderBuffer[1]);
    float _295 = dot(_289, Material_Material_PreshaderBuffer[2]);
    float2 _297 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _303 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _297, View_View_MaterialTextureMipBias);
    float2 _305 = mad(_303.xy, 2.0f.xx, (-1.0f).xx);
    float2 _313 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _317 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _313, View_View_MaterialTextureMipBias);
    float _343 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _343 = _276.w;
            break;
        }
        else
        {
            float _328 = _276.z;
            _343 = mad(_328, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_328, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _349 = clamp(((lerp(-2000.0f, 2000.0f, _317.y) + _343) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _351 = _292.xxx;
    float2 _357 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _297, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _376 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _313, View_View_MaterialTextureMipBias).x) + _343) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _378 = _295.xxx;
    float3 _388 = normalize(mul(normalize((mad(lerp(float4(_305, sqrt(clamp(1.0f - dot(_305, _305), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _349), _351, lerp(float4(_357, sqrt(clamp(1.0f - dot(_357, _357), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _376) * _378) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_260, cross(_257, _260), _257), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float2 _414 = in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx;
    float3 _421 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _297, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _414, View_View_MaterialTextureMipBias).y), 0.0f, 1.0f).xxx);
    float4 _425 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _313, View_View_MaterialTextureMipBias);
    float2 _431 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _435 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _431, View_View_MaterialTextureMipBias);
    float3 _458 = lerp(Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _297, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _414, View_View_MaterialTextureMipBias).x), 0.0f, 1.0f).xxx);
    float4 _462 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _313, View_View_MaterialTextureMipBias);
    float4 _468 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _431, View_View_MaterialTextureMipBias);
    float3 _475 = clamp(mad(lerp(_421, lerp(_421, lerp(_425.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _435.x.xxx), _349), _351, lerp(_458, lerp(_458, lerp(_462.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _468.x.xxx), _376) * _378), 0.0f.xxx, 1.0f.xxx);
    float _479 = mad(clamp(_292 + _295, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _480 = in_var_PRIMITIVE_ID * 41u;
    float _524 = 0.0f;
    float _525 = 0.0f;
    float _526 = 0.0f;
    float3 _527 = 0.0f.xxx;
    float3 _528 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_480].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _496 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _500 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _496, 0.0f);
        float4 _503 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _496, 0.0f);
        float4 _506 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _496, 0.0f);
        float _516 = _506.w;
        _524 = mad(_479, _516, _506.z);
        _525 = mad(0.5f, _516, _506.y);
        _526 = _506.x;
        _527 = (_475 * _500.w) + _500.xyz;
        _528 = normalize((_388 * _503.w) + ((_503.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _524 = _479;
        _525 = 0.5f;
        _526 = 0.0f;
        _527 = _475;
        _528 = _388;
    }
    uint _531 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_480].x);
    bool _547 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _553 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_480].x) & 2u) != 0u) && _547)
    {
        _553 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _553 = 1.0f;
    }
    float _603 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_480].x) & 4u) != 0u)
    {
        float3 _571 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _285, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _582 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_571.x), int(_571.y), int(_571.z), 0).xyz, 0)));
        _603 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_582.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_571 / _582.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _603 = _553;
    }
    float3 _616 = ((_527 - (_527 * _526)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _623 = (lerp((0.07999999821186065673828125f * _525).xxx, _527, _526.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _626 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _631 = 0.0f.xxx;
    if (_626)
    {
        _631 = _616 + (_623 * 0.449999988079071044921875f);
    }
    else
    {
        _631 = _616;
    }
    bool3 _632 = _626.xxx;
    float3 _633 = float3(_632.x ? 0.0f.xxx.x : _623.x, _632.y ? 0.0f.xxx.y : _623.y, _632.z ? 0.0f.xxx.z : _623.z);
    float3 _635 = dot(_633, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _710 = 0.0f.xxx;
    if (_547)
    {
        float3 _662 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _285, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _666 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _662);
        float4 _670 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _662);
        float4 _673 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _662);
        float4 _691 = 0.0f.xxxx;
        _691.y = (-0.48860299587249755859375f) * _528.y;
        _691.z = 0.48860299587249755859375f * _528.z;
        _691.w = (-0.48860299587249755859375f) * _528.x;
        _691.x = 0.886227548122406005859375f;
        float3 _700 = _691.yzw * 2.094395160675048828125f;
        float4 _701 = float4(_691.x, _700.x, _700.y, _700.z);
        float3 _703 = 0.0f.xxx;
        _703.x = dot(float4(_666.x, _670.x, _673.x, _666.w), _701);
        _703.y = dot(float4(_666.y, _670.y, _673.y, _670.w), _701);
        _703.z = dot(float4(_666.z, _670.z, _673.zw), _701);
        _710 = max(0.0f.xxx, _703) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _710 = 0.0f.xxx;
    }
    float3 _713 = _710 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _734 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx), 0.0f.xxx);
    float3 _814 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _760 = _480 + 31u;
        float3 _769 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_480 + 1u].xyz) * 2097152.0f) + (_285 - Scene_GPUScene_GPUScenePrimitiveSceneData[_480 + 18u].xyz));
        float3 _770 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_480 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_480 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_480 + 25u].w) + 1.0f.xxx;
        float3 _813 = 0.0f.xxx;
        if (any(bool3(_769.x > _770.x, _769.y > _770.y, _769.z > _770.z)))
        {
            float3 _793 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _794 = _285 * 0.57700002193450927734375f.xxx;
            float3 _809 = frac(mad((_794.x + _794.y) + _794.z, 0.00200000009499490261077880859375f, frac(((_793.x + _793.y) + _793.z) * 4194.30419921875f))).xxx;
            _813 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_809.x > 0.5f.xxx.x, _809.y > 0.5f.xxx.y, _809.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _792 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_760].x > 0.0f)
            {
                float3 _780 = abs(_284 - in_var_TEXCOORD9);
                _792 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_780.x, max(_780.y, _780.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_760].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _792 = _734;
            }
            _813 = _792;
        }
        _814 = _813;
    }
    else
    {
        _814 = _734;
    }
    float4 _821 = float4((mad(_713 * _631, max(1.0f.xxx, ((((((_527 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_527 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_527 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _631 + (_633 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _814) * 1.0f, 0.0f);
    float4 _828 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _827 = _821;
        _827.w = 0.0f;
        _828 = _827;
    }
    else
    {
        _828 = _821;
    }
    float2 _832 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _847 = (_528 * 0.5f) + 0.5f.xxx;
    float4 _849 = 0.0f.xxxx;
    _849.x = _847.x;
    _849.y = _847.y;
    _849.z = _847.z;
    _849.w = mad(2.0f, float((_531 & 256u) != 0u), float((_531 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _856 = 0.0f.xxxx;
    _856.x = _527.x;
    _856.y = _527.y;
    _856.z = _527.z;
    _856.w = mad(frac(dot(_832.xyx * _832.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_713, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_635 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_635 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_635 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _862 = 0.0f.xxxx;
    _862.x = _603;
    _862.y = 1.0f;
    _862.z = 1.0f;
    _862.w = 1.0f;
    float4 _867 = _828 * View_View_PreExposure;
    float3 _869 = min(_867.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_869.x, _869.y, _869.z, _867.w);
    out_var_SV_Target1 = _849;
    out_var_SV_Target2 = float4(_526, _525, _524, 0.50588238239288330078125f);
    out_var_SV_Target3 = _856;
    out_var_SV_Target5 = _862;
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
