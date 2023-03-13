@testset "rescale.jl" begin
    v = randn(10) |> sort

    minval = 0.0
    maxval = 1.0
    vr = rescale(v, minval, maxval)
    @test minval == first(vr)
    @test maxval == last(vr)

    ratios = diff(vr) ./ diff(v)
    neqfalse(a, b) = isapprox(a,b) ? a : false
    @test reduce(neqfalse, ratios) == ratios[1]
end
