using Documenter, MPSKit

makedocs(modules=[MPSKit],
            sitename="MPSKit.jl",
            format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true",
                                        mathengine = MathJax()),
            pages = [
                "Home" => "index.md",
                "Manual" => ["man/intro.md", "man/states.md", "man/operators.md",
                                "man/algorithms.md","man/environments.md"],
                "Tutorials" => ["tut/xxz_groundstate.md"],
                "Library" => ["lib/lib.md"],
            ])

deploydocs(
    repo = "github.com/maartenvd/MPSKit.jl.git",
)
