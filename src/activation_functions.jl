σ{T <: Real}(z::T) = 1.0/(1.0 + exp(-z))

∇σ{T <: Real}(z::T) = 1.0 / (2.0 + exp(z) + exp(-z))
