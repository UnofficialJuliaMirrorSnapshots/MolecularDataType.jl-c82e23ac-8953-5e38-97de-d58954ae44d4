"""
Constructor for type **TopologicChain** with keyword arguments.
"""
function TopologicChain(;
    chain_name::AbstractString="",
    members::Array=Array{TopologicResidue,1}())
    return TopologicChain(TopologicMolecularContainer(chain_name, members))
end
