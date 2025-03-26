#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _182 = 0.0f;

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
    float4 _218 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _222 = mad(float2(_218.zw), 2.0f.xx, (-1.0f).xx);
    float _226 = sqrt(max(1.0f - dot(_222, _222), 0.0f));
    float _227 = _222.x;
    float3 _229 = float3(_227, _222.y, _226);
    float3 _232 = normalize(float3(_226, 0.0f, -_227));
    float4 _248 = float4(_182, _182, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _252 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _256 = _252.xyz / _252.w.xxx;
    float3 _257 = _256 - View_View_RelativePreViewTranslation;
    float4 _261 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _264 = dot(_261, Material_Material_PreshaderBuffer[1]);
    float _267 = dot(_261, Material_Material_PreshaderBuffer[2]);
    float2 _269 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _275 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _269, View_View_MaterialTextureMipBias);
    float2 _277 = mad(_275.xy, 2.0f.xx, (-1.0f).xx);
    float2 _285 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _289 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _285, View_View_MaterialTextureMipBias);
    float _315 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _315 = _248.w;
            break;
        }
        else
        {
            float _300 = _248.z;
            _315 = mad(_300, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_300, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _321 = clamp(((lerp(-2000.0f, 2000.0f, _289.y) + _315) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _323 = _264.xxx;
    float2 _329 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _269, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _348 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _285, View_View_MaterialTextureMipBias).x) + _315) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _350 = _267.xxx;
    float3 _360 = normalize(mul(normalize((mad(lerp(float4(_277, sqrt(clamp(1.0f - dot(_277, _277), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _321), _323, lerp(float4(_329, sqrt(clamp(1.0f - dot(_329, _329), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _348) * _350) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_232, cross(_229, _232), _229), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _390 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx, View_View_MaterialTextureMipBias);
    float3 _395 = lerp(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _269, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, _390.y), 0.0f, 1.0f).xxx);
    float4 _399 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, _285, View_View_MaterialTextureMipBias);
    float2 _405 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float4 _409 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, _405, View_View_MaterialTextureMipBias);
    float3 _430 = lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _269, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[5].xyz, Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[7].xyz, clamp(lerp(-0.25f, 2.0f, _390.x), 0.0f, 1.0f).xxx);
    float4 _434 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _285, View_View_MaterialTextureMipBias);
    float4 _440 = Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, _405, View_View_MaterialTextureMipBias);
    float3 _447 = clamp(mad(lerp(_395, lerp(_395, lerp(_399.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _409.x.xxx), _321), _323, lerp(_430, lerp(_430, lerp(_434.xyz, Material_Material_PreshaderBuffer[9].xyz, 0.300000011920928955078125f.xxx), _440.x.xxx), _348) * _350), 0.0f.xxx, 1.0f.xxx);
    float _451 = mad(clamp(_264 + _267, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _452 = in_var_PRIMITIVE_ID * 41u;
    float _496 = 0.0f;
    float _497 = 0.0f;
    float _498 = 0.0f;
    float3 _499 = 0.0f.xxx;
    float3 _500 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _468 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _472 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _468, 0.0f);
        float4 _475 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _468, 0.0f);
        float4 _478 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _468, 0.0f);
        float _488 = _478.w;
        _496 = mad(_451, _488, _478.z);
        _497 = mad(0.5f, _488, _478.y);
        _498 = _478.x;
        _499 = (_447 * _472.w) + _472.xyz;
        _500 = normalize((_360 * _475.w) + ((_475.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _496 = _451;
        _497 = 0.5f;
        _498 = 0.0f;
        _499 = _447;
        _500 = _360;
    }
    uint _503 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x);
    float _561 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_452].x) & 4u) != 0u)
    {
        float3 _529 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _257, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _540 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_529.x), int(_529.y), int(_529.z), 0).xyz, 0)));
        _561 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_540.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_529 / _540.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _561 = 1.0f;
    }
    float3 _574 = ((_499 - (_499 * _498)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _581 = (lerp((0.07999999821186065673828125f * _497).xxx, _499, _498.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _584 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _589 = 0.0f.xxx;
    if (_584)
    {
        _589 = _574 + (_581 * 0.449999988079071044921875f);
    }
    else
    {
        _589 = _574;
    }
    bool3 _590 = _584.xxx;
    float3 _598 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[3].yzw, Material_Material_PreshaderBuffer[3].x.xxx), 0.0f.xxx);
    float3 _678 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _624 = _452 + 31u;
        float3 _633 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 1u].xyz) * 2097152.0f) + (_257 - Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 18u].xyz));
        float3 _634 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_452 + 25u].w) + 1.0f.xxx;
        float3 _677 = 0.0f.xxx;
        if (any(bool3(_633.x > _634.x, _633.y > _634.y, _633.z > _634.z)))
        {
            float3 _657 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _658 = _257 * 0.57700002193450927734375f.xxx;
            float3 _673 = frac(mad((_658.x + _658.y) + _658.z, 0.00200000009499490261077880859375f, frac(((_657.x + _657.y) + _657.z) * 4194.30419921875f))).xxx;
            _677 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_673.x > 0.5f.xxx.x, _673.y > 0.5f.xxx.y, _673.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _656 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_624].x > 0.0f)
            {
                float3 _644 = abs(_256 - in_var_TEXCOORD9);
                _656 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_644.x, max(_644.y, _644.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_624].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _656 = _598;
            }
            _677 = _656;
        }
        _678 = _677;
    }
    else
    {
        _678 = _598;
    }
    float4 _684 = float4((lerp(0.0f.xxx, _589 + (float3(_590.x ? 0.0f.xxx.x : _581.x, _590.y ? 0.0f.xxx.y : _581.y, _590.z ? 0.0f.xxx.z : _581.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _678) * 1.0f, 0.0f);
    float4 _691 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _690 = _684;
        _690.w = 0.0f;
        _691 = _690;
    }
    else
    {
        _691 = _684;
    }
    float2 _695 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _704 = (_500 * 0.5f) + 0.5f.xxx;
    float4 _706 = 0.0f.xxxx;
    _706.x = _704.x;
    _706.y = _704.y;
    _706.z = _704.z;
    _706.w = mad(2.0f, float((_503 & 256u) != 0u), float((_503 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _713 = 0.0f.xxxx;
    _713.x = _499.x;
    _713.y = _499.y;
    _713.z = _499.z;
    _713.w = (frac(dot(_695.xyx * _695.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _719 = 0.0f.xxxx;
    _719.x = _561;
    _719.y = 1.0f;
    _719.z = 1.0f;
    _719.w = 1.0f;
    float4 _726 = _691 * View_View_PreExposure;
    float3 _728 = min(_726.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_728.x, _728.y, _728.z, _726.w);
    out_var_SV_Target1 = _706;
    out_var_SV_Target2 = float4(_498, _497, _496, 0.50588238239288330078125f);
    out_var_SV_Target3 = _713;
    out_var_SV_Target5 = _719;
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
