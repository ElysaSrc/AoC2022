data = collect(eachsplit(read(open("input.txt"), String), "\n"))
values = collect("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")

println(
  sum(
    (x) -> findfirst(
      (y) -> y == first(intersect(
        collect(x[1:convert(Int, (length(x)/2))]),
        collect(x[convert(Int, (length(x)/2))+1:length(x)])
      )),
      values
    ),
    data
  )
)

println(
  sum(
    (x) -> findfirst(
      (y) -> y == first(intersect(map((x) -> collect(x), data[(x*3)+1:(x+1)*3])...)),
      values
    ),
    collect(0:99)
  )
)
