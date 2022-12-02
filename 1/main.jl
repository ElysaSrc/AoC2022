s = sort(map(
    (x) -> sum(map((y) -> parse(Int, y), eachsplit(x, "\n"))),
    eachsplit(
        open("input.txt") do file
            read(file, String)
        end,
        "\n\n"
    )
), rev=true)
println(first(s))
println(sum(s[1:3]))
