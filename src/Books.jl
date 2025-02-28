module Books

const PROJECT_ROOT = string(pkgdir(Books))::String

let
    path = joinpath(PROJECT_ROOT, "README.md")
    text = read(path, String)
    @doc text Books
end

import Artifacts
import CodeTracking
import LazyArtifacts
import LiveServer
import TOML
import YAML

using Dates: today
using InteractiveUtils: gen_call_with_extracted_types
using Markdown: MD
using Memoize: @memoize
using Requires: @require
using pandoc_crossref_jll: pandoc_crossref_path
using pandoc_jll: pandoc

const GENERATED_DIR = "_gen"
const DEFAULTS_DIR = joinpath(PROJECT_ROOT, "defaults")
const BUILD_DIR = "_build"
const JULIAMONO_VERSION = "0.045"
mkpath(BUILD_DIR)

include("defaults.jl")
include("ci.jl")
include("sitemap.jl")
include("html.jl")
include("build.jl")
export html, pdf, docx, build_all
include("serve.jl")
include("output.jl")
export without_caption_label
include(joinpath("outputs", "dataframes.jl"))
include("showcode.jl")
include("generate.jl")
export code, ImageOptions, Options

export code_block, output_block
export @sc, sc, CodeAndFunction, @sco, sco, scob
export gen
export serve

function __init__()
    @require AlgebraOfGraphics="cbdf2221-f076-402e-a563-3d30da359d67" include("outputs/aog.jl")
    @require Makie="ee78f7c6-11fb-53f2-987a-cfe4a2b5a57a" include("outputs/makie.jl")
    @require Plots="91a5bcdd-55d7-5caf-9e0b-520d859cae80" include("outputs/plots.jl")
end

end # module
