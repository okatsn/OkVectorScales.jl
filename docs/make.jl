using OkVectorScales
using Documenter

DocMeta.setdocmeta!(OkVectorScales, :DocTestSetup, :(using OkVectorScales); recursive=true)

makedocs(;
    modules=[OkVectorScales],
    authors="okatsn <okatsn@gmail.com> and contributors",
    repo="https://github.com/okatsn/OkVectorScales.jl/blob/{commit}{path}#{line}",
    sitename="OkVectorScales.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://okatsn.github.io/OkVectorScales.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/okatsn/OkVectorScales.jl",
    devbranch="main",
)
