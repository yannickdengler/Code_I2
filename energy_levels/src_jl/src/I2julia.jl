module I2julia

using HDF5
using Statistics
using DelimitedFiles
using Roots
using ProgressMeter
using Parsers
using Plots
using LsqFit
using NaNStatistics

include("average.jl")
export average_sources, average_configurations, write_averaged_hdf5_files
include("ensemble_table.jl")
export write_ensemble_list
include("effective_mass.jl")
export meff, meff_jackknife
include("correlator_derivative.jl")
export correlator_derivative
include("plot_energy_levels.jl")
export plot_energy_levels, plot_energy_levels!
export add_mass_band!, add_fit_range!, plot_correlator!
include("finding_ensembles.jl")
export find_matching_files, find_largest_volume, unique_ensemble_sets
include("finite_volume_analysis.jl")
export finitevolume_goldstone, all_infinite_volume_goldstones
include("errorstring.jl")
export errorstring
include("parse_piondecay.jl")
export parse_spectrum

end # module I2julia
