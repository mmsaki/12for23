# How to debug

To help with debugging, you can use the fact that all console output will be captured and shown in the test results window. You can output any value by passing it to `@show`.
`@show` shows an expression and its result, while returning its result.

```julia
@show uppercase("hello") # HELLO will be shown as debug output
```

# Functions

Create a functions in julia console cli

```julia
julia> function f(a, b)
       @show a b
       return (@show a^b) / 1000
       end 
f (generic function with 1 method)

julia> f(3,5)
a = 3
b = 5
a ^ b = 243
0.243
```

## Run tests

To run tests

```
Julia hello-world/runtests.jl
```

```julia
Hello World!
"Hello, World!" = "Hello, World!"
Test Summary: | Pass  Total  Time
Say Hi!       |    1      1  0.1s 
```
