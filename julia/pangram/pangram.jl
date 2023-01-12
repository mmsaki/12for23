"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    input = lowercase(input)
    a = "abcdefghijklmnopqrstuvwxyz"
    m = filter(x -> occursin(x, a), input)
    if Set(m) == Set(a)
        return true
    else
        return false
    end
end
