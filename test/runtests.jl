using NewtonsMethod
using Test

@testset "newtonroot" begin
    f(x) = x^2
    fp(x) = 2*x
    @test newtonroot(f, fp; x0=1.0) ≈ 0.0 atol=1.0e-7
    @test newtonroot(f; x0=1.0) ≈ 0.0 atol=1.0e-7
end
