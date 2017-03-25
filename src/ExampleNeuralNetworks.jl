module ExampleNeuralNetworks

# package code goes here
include("feedforwardunit.jl")
include("activation_functions.jl")

export
    AbstractFeedForwardUnit,
    RectifiedLinearUnit,
    SigmoidLinearUnit

end # module
