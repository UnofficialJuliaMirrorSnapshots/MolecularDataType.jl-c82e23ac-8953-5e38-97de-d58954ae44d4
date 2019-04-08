"""
A getter function for objects of type ``Chain``.

Arguments
----------
obj:Chain
    an Chain object 

field:Symbol
    the requested field name
"""
function obtain(obj::Chain, field::Symbol, args...)
    if field in fieldnames(obj)
        return getfield(obj, field)

    elseif field == :segments
        return obtain(obj._topology, :members)

    elseif field == :segment_count
        return obtain(obj._topology, :member_count, 1)

    elseif field == :residue_count
        return obtain(obj._topology, :member_count, 2)

    elseif field == :atom_count
        return obtain(obj._topology, :member_count, 3)

    elseif field == :coordinate
        return obj._coordinate

    elseif field == :topology 
        return obj._topology 
        
    else
        return obtain(obj._topology, field, args...)
    end
end