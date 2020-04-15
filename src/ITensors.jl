module ITensors

#####################################
# NDTensors
#
include("../NDTensors/src/NDTensors.jl")

#####################################
# External packages
#
using HDF5
using KrylovKit
using LinearAlgebra
using .NDTensors
using Printf
using Random
using StaticArrays
using TimerOutputs

#####################################
# Global Variables
#
include("exports.jl")

#####################################
# Global Variables
#
const GLOBAL_PARAMS = Dict("WarnTensorOrder" => 14)
const GLOBAL_TIMER = TimerOutput()

#####################################
# Index and IndexSet
#
include("smallstring.jl")
include("readwrite.jl")
include("not.jl")
include("tagset.jl")
include("arrow.jl")
include("index.jl")
include("indexset.jl")

#####################################
# ITensor
#
include("itensor.jl")
include("broadcast.jl")
include("decomp.jl")
include("iterativesolvers.jl")

#####################################
# QNs
#
include("qn/qn.jl")
include("qn/qnindex.jl")
include("qn/qnindexset.jl")
include("qn/qnitensor.jl")

#####################################
# MPS/MPO
#
include("mps/mps.jl")
include("mps/mpo.jl")
include("mps/sweeps.jl")
include("mps/projmpo.jl")
include("mps/projmposum.jl")
include("mps/projmps.jl")
include("mps/projmpo_mps.jl")
include("mps/observer.jl")
include("mps/dmrg.jl")

#####################################
# Physics
#
include("physics/tag_types.jl")
include("physics/lattices.jl")
include("physics/site_types/spinhalf.jl")
include("physics/site_types/spinone.jl")
include("physics/site_types/fermion.jl")
include("physics/site_types/electron.jl")
include("physics/site_types/tj.jl")
include("physics/autompo.jl")

#####################################
# Developer tools, for internal
# use only
#
include("developer_tools.jl")

end # module ITensors
