abstract AbstractFeedForwardUnit

type RectifiedLinearUnit <: AbstractFeedForwardUnit
    W:: Vector{Float64}
    bias:: Float64
    activationfunction:: Function

    function RectifiedLinearUnit(W:: Vector{Float64}, bias:: Float64)
        function activationfunction(x)
            max(0,x)
        end
        new(W, bias, activationfunction)
    end
end

type LogisticUnit <: AbstractFeedForwardUnit
    W:: Vector{Float64}
    bias:: Float64
    activationfunction:: Function

    function LogisticUnit(W:: Vector{Float64}, bias:: Float64)
        new(W, bias, σ)
    end
end

function forward(u:: AbstractFeedForwardUnit, X::Array{Float64,2})
    u.activationfunction(X*u.W + u.bias)
end

function forward(u:: AbstractFeedForwardUnit, x::Vector{Float64})
    u.activationfunction(u.W'*x + u.bias)
end
