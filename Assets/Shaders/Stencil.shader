Shader "Custom/Stencil"
{
    Properties
    {
        _StencilLayer ("Stencil Layer", Integer) = 1
    }
    SubShader
    {
        Tags 
        {
            "RenderType" = "Opaque"
            "Queue" = "Geometry"
            "RenderPipeline" = "UniversalPipeline"
        }

        Pass 
        {
            Blend Zero One
            ZWrite Off

            Stencil 
            {
                Ref [_StencilLayer]
                Comp Always
                Pass Replace
                Fail Keep
            }
        }
    }
}
