

"""
`rescale(v, minval, maxval)` rescale the vector `v` in the scale of `[minval, maxval]`.
```
"""
function rescale(v, minval, maxval)
    f = (maxval - minval)/only(diff([extrema(v)...]))
    Δv = v .- first(v) # make the first zero
    return minval .+ f*Δv
end
