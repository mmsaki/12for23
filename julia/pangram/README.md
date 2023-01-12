# Regex in Julia

Solution

```julia
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
```



- [x] Passed all tests

```bash
Test Summary:  | Pass  Total  Time
empty sentence |    1      1  0.1s
Test Summary:      | Pass  Total  Time
perfect lower case |    1      1  0.0s
Test Summary:                | Pass  Total  Time
pangram with only lower case |    1      1  0.0s
Test Summary:         | Pass  Total  Time
missing character 'x' |    1      1  0.0s
Test Summary:                 | Pass  Total  Time
another missing character 'x' |    1      1  0.0s
Test Summary:         | Pass  Total  Time
missing character 'h' |    1      1  0.0s
Test Summary:            | Pass  Total  Time
pangram with underscores |    1      1  0.0s
Test Summary:        | Pass  Total  Time
pangram with numbers |    1      1  0.0s
Test Summary:                       | Pass  Total  Time
missing letters replaced by numbers |    1      1  0.0s
Test Summary:                           | Pass  Total  Time
pangram with mixed case and punctuation |    1      1  0.0s
Test Summary:                                                                        | Pass  Total  Time
upper and lower case versions of the same character should not be counted separately |    1      1  0.0s
Test Summary:                                          | Pass  Total  Time
a-m and A-M are 26 different letters but not a pangram |    1      1  0.0s
Test Summary:                                         | Pass  Total  Time
pangram with more than 26 letters (if case sensitive) |    1      1  0.0s
Test Summary:                     | Pass  Total  Time
letters that aren't part of ASCII |    1      1  0.0s
```
