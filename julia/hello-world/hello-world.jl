# One liner function
h() = "Hello, World!"

# Dubug using @show
@show uppercase("Hello, World!")

# You can also use println or any other method that writes output to stdout
println("Hello World!")

# Function
function hello()
    return (@show "Hello, World!")
end
