#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float _195 = 0.0f;

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
Texture2D<float4> Material_Texture2D_16;
SamplerState Material_Texture2D_16Sampler;
Texture2D<float4> Material_Texture2D_17;
SamplerState Material_Texture2D_17Sampler;
Texture2D<float4> Material_Texture2D_18;
SamplerState Material_Texture2D_18Sampler;
Texture2D<float4> Material_Texture2D_19;
SamplerState Material_Texture2D_19Sampler;

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
    float4 _231 = LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw);
    float2 _235 = mad(float2(_231.zw), 2.0f.xx, (-1.0f).xx);
    float _239 = sqrt(max(1.0f - dot(_235, _235), 0.0f));
    float _240 = _235.x;
    float3 _242 = float3(_240, _235.y, _239);
    float3 _245 = normalize(float3(_239, 0.0f, -_240));
    float4 _261 = float4(_195, _195, gl_FragCoord.z, 1.0f) * (1.0f / gl_FragCoord.w);
    float4 _265 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _269 = _265.xyz / _265.w.xxx;
    float3 _270 = _269 - View_View_RelativePreViewTranslation;
    float4 _274 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float _277 = dot(_274, Material_Material_PreshaderBuffer[1]);
    float _280 = dot(_274, Material_Material_PreshaderBuffer[2]);
    float _284 = dot(_274, Material_Material_PreshaderBuffer[3]);
    float2 _286 = in_var_TEXCOORD0 * 0.5f.xx;
    float4 _292 = Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, _286, View_View_MaterialTextureMipBias);
    float2 _294 = mad(_292.xy, 2.0f.xx, (-1.0f).xx);
    float2 _302 = in_var_TEXCOORD0 * 0.0500000007450580596923828125f.xx;
    float4 _306 = Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, _302, View_View_MaterialTextureMipBias);
    float _332 = 0.0f;
    do
    {
        [flatten]
        if (View_View_ViewToClip[3u].w < 1.0f)
        {
            _332 = _261.w;
            break;
        }
        else
        {
            float _317 = _261.z;
            _332 = mad(_317, View_View_InvDeviceZToWorldZTransform.x, View_View_InvDeviceZToWorldZTransform.y) + (1.0f / mad(_317, View_View_InvDeviceZToWorldZTransform.z, -View_View_InvDeviceZToWorldZTransform.w));
            break;
        }
        break; // unreachable workaround
    } while(false);
    float3 _338 = clamp(((lerp(-2000.0f, 2000.0f, _306.y) + _332) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _340 = _277.xxx;
    float2 _346 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, _286, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _365 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, _302, View_View_MaterialTextureMipBias).x) + _332) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _367 = _280.xxx;
    float2 _375 = mad(Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, _286, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _394 = clamp(((lerp(-2000.0f, 2000.0f, Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, _302, View_View_MaterialTextureMipBias).z) + _332) - 1000.0f) * 0.0005000000237487256526947021484375f, 0.0f, 1.0f).xxx;
    float3 _396 = _284.xxx;
    float3 _405 = normalize(mul(normalize((mad(lerp(float4(_375, sqrt(clamp(1.0f - dot(_375, _375), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _394), _396, mad(lerp(float4(_294, sqrt(clamp(1.0f - dot(_294, _294), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _338), _340, lerp(float4(_346, sqrt(clamp(1.0f - dot(_346, _346), 0.0f, 1.0f)), 1.0f).xyz, float3(0.0f, 0.0f, 1.0f), _365) * _367)) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_245, cross(_242, _245), _242), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _435 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0 * 0.0074999998323619365692138671875f.xx, View_View_MaterialTextureMipBias);
    float3 _440 = lerp(Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, _286, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _435.y), 0.0f, 1.0f).xxx);
    float2 _450 = in_var_TEXCOORD0 * 0.004999999888241291046142578125f.xx;
    float3 _475 = lerp(Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, _286, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_13.SampleBias(Material_Texture2D_13Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _435.x), 0.0f, 1.0f).xxx);
    float3 _508 = lerp(Material_Texture2D_16.SampleBias(Material_Texture2D_16Sampler, _286, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[6].xyz, Material_Texture2D_17.SampleBias(Material_Texture2D_17Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * Material_Material_PreshaderBuffer[8].xyz, clamp(lerp(-0.25f, 2.0f, _435.z), 0.0f, 1.0f).xxx);
    float3 _524 = clamp(mad(lerp(_508, lerp(_508, lerp(Material_Texture2D_18.SampleBias(Material_Texture2D_18Sampler, _302, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), Material_Texture2D_19.SampleBias(Material_Texture2D_19Sampler, _450, View_View_MaterialTextureMipBias).x.xxx), _394), _396, mad(lerp(_440, lerp(_440, lerp(Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, _302, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, _450, View_View_MaterialTextureMipBias).x.xxx), _338), _340, lerp(_475, lerp(_475, lerp(Material_Texture2D_14.SampleBias(Material_Texture2D_14Sampler, _302, View_View_MaterialTextureMipBias).xyz, Material_Material_PreshaderBuffer[10].xyz, 0.300000011920928955078125f.xxx), Material_Texture2D_15.SampleBias(Material_Texture2D_15Sampler, _450, View_View_MaterialTextureMipBias).x.xxx), _365) * _367)), 0.0f.xxx, 1.0f.xxx);
    float _528 = mad(clamp((_277 + _280) + _284, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _529 = in_var_PRIMITIVE_ID * 41u;
    float _573 = 0.0f;
    float _574 = 0.0f;
    float _575 = 0.0f;
    float3 _576 = 0.0f.xxx;
    float3 _577 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_529].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _545 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _549 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _545, 0.0f);
        float4 _552 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _545, 0.0f);
        float4 _555 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _545, 0.0f);
        float _565 = _555.w;
        _573 = mad(_528, _565, _555.z);
        _574 = mad(0.5f, _565, _555.y);
        _575 = _555.x;
        _576 = (_524 * _549.w) + _549.xyz;
        _577 = normalize((_405 * _552.w) + ((_552.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _573 = _528;
        _574 = 0.5f;
        _575 = 0.0f;
        _576 = _524;
        _577 = _405;
    }
    uint _580 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_529].x);
    float _638 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_529].x) & 4u) != 0u)
    {
        float3 _606 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _270, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _617 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_606.x), int(_606.y), int(_606.z), 0).xyz, 0)));
        _638 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_617.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_606 / _617.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _638 = 1.0f;
    }
    float3 _651 = ((_576 - (_576 * _575)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _658 = (lerp((0.07999999821186065673828125f * _574).xxx, _576, _575.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _661 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _666 = 0.0f.xxx;
    if (_661)
    {
        _666 = _651 + (_658 * 0.449999988079071044921875f);
    }
    else
    {
        _666 = _651;
    }
    bool3 _667 = _661.xxx;
    float3 _675 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _755 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        uint _701 = _529 + 31u;
        float3 _710 = abs(((View_View_ViewTilePosition - Scene_GPUScene_GPUScenePrimitiveSceneData[_529 + 1u].xyz) * 2097152.0f) + (_270 - Scene_GPUScene_GPUScenePrimitiveSceneData[_529 + 18u].xyz));
        float3 _711 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_529 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_529 + 24u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_529 + 25u].w) + 1.0f.xxx;
        float3 _754 = 0.0f.xxx;
        if (any(bool3(_710.x > _711.x, _710.y > _711.y, _710.z > _711.z)))
        {
            float3 _734 = View_View_ViewTilePosition * 0.57700002193450927734375f.xxx;
            float3 _735 = _270 * 0.57700002193450927734375f.xxx;
            float3 _750 = frac(mad((_735.x + _735.y) + _735.z, 0.00200000009499490261077880859375f, frac(((_734.x + _734.y) + _734.z) * 4194.30419921875f))).xxx;
            _754 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_750.x > 0.5f.xxx.x, _750.y > 0.5f.xxx.y, _750.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _733 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_701].x > 0.0f)
            {
                float3 _721 = abs(_269 - in_var_TEXCOORD9);
                _733 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_721.x, max(_721.y, _721.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_701].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _733 = _675;
            }
            _754 = _733;
        }
        _755 = _754;
    }
    else
    {
        _755 = _675;
    }
    float4 _761 = float4((lerp(0.0f.xxx, _666 + (float3(_667.x ? 0.0f.xxx.x : _658.x, _667.y ? 0.0f.xxx.y : _658.y, _667.z ? 0.0f.xxx.z : _658.z) * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx) + _755) * 1.0f, 0.0f);
    float4 _768 = 0.0f.xxxx;
    if (View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f)
    {
        float4 _767 = _761;
        _767.w = 0.0f;
        _768 = _767;
    }
    else
    {
        _768 = _761;
    }
    float2 _772 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _781 = (_577 * 0.5f) + 0.5f.xxx;
    float4 _783 = 0.0f.xxxx;
    _783.x = _781.x;
    _783.y = _781.y;
    _783.z = _781.z;
    _783.w = mad(2.0f, float((_580 & 256u) != 0u), float((_580 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _790 = 0.0f.xxxx;
    _790.x = _576.x;
    _790.y = _576.y;
    _790.z = _576.z;
    _790.w = (frac(dot(_772.xyx * _772.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f) * 0.0039215688593685626983642578125f;
    float4 _796 = 0.0f.xxxx;
    _796.x = _638;
    _796.y = 1.0f;
    _796.z = 1.0f;
    _796.w = 1.0f;
    float4 _803 = _768 * View_View_PreExposure;
    float3 _805 = min(_803.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_805.x, _805.y, _805.z, _803.w);
    out_var_SV_Target1 = _783;
    out_var_SV_Target2 = float4(_575, _574, _573, 0.50588238239288330078125f);
    out_var_SV_Target3 = _790;
    out_var_SV_Target5 = _796;
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
