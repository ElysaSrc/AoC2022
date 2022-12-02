points = Dict(
  "A X" => 4, "B X" => 1, "C X" => 7,
  "A Y" => 8, "B Y" => 5, "C Y" => 2,
  "A Z" => 3, "B Z" => 9, "C Z" => 6
)
strat = Dict(
  "A X" => "A Z", "B X" => "B X", "C X" => "C Y",
  "A Y" => "A X", "B Y" => "B Y", "C Y" => "C Z",
  "A Z" => "A Y", "B Z" => "B Z", "C Z" => "C X"
)

data = eachsplit(read(open("input.txt"), String), "\n")
println(sum((x) -> points[x], data))
println(sum((x) -> points[strat[x]], data))
