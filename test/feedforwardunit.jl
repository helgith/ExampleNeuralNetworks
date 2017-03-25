@testset "rectifiedlinearunit" begin
    @testset "one" begin
        X = [0.0 0.0; 0.0 1.0; 1.0 0.0; 1.0 1.0]
        W = [1.0; 1.0]
        bias = 0.0
        rlu = RectifiedLinearUnit(W, bias)
        @test forward(rlu, X) == [0.0, 1.0, 1.0, 2.0]
    end

end
