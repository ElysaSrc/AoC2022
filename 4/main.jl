data = map(
  x -> map(
    r -> r[1]:r[2],
    map(
      y -> map(
        z -> parse(Int, z),
        eachsplit(y, "-")
      ),
      eachsplit(x, ",")
    )
  ),
  eachsplit(read(open("input.txt"), String), "\n")
)

println(sum(x -> issubset(x[1], x[2]) || issubset(x[2], x[1]), data))
println(sum(x -> length(intersect(x[1], x[2])) > 0, data))
