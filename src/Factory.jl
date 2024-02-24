
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.

function __characterbuild__(record)
    characters = split(record, "")

    return characters
end

function __lenbuild__(characters::Array{Char,1})
    len = len(characters)

    return len
end
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
# TODO: Make a build method to construct MyPuzzleRecordModel types

function build(type::Type{MyPuzzleRecordModel}, record::String)::MyPuzzleRecordModel
    # Check to make sure everything is correct type

    # initalizer
    inst = MyPuzzleRecordModel()

    # fill instance

    inst.record = record
    inst.characters = __characterbuild__(record)
    inst.len = __lenbuild__(record)

    return inst
end
# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #