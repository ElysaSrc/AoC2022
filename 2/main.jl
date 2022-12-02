function to_points(o::Char, s::Char)
  if s == 'X' # Rock
    base = 1
    if o == 'A' # Rock
      return base + 3
    elseif o == 'B' # Paper
      return base + 0
    elseif o == 'C' # Cisor
      return base + 6
    end
  elseif s == 'Y' # Paper
    base = 2
    if o == 'A' # Rock
      return base + 6
    elseif o == 'B' # Paper
      return base + 3
    elseif o == 'C' # Cisor
      return base + 0
    end
  elseif s == 'Z' # Cisor
    base = 3
    if o == 'A' # Rock
      return base + 0
    elseif o == 'B' # Paper
      return base + 6
    elseif o == 'C' # Cisor
      return base + 3
    end
  end
end

function to_strat(o::Char, s::Char)
  if s == 'X' # lose
    if o == 'A' # Rock
      return 'Z'
    elseif o == 'B' # Paper
      return 'X'
    elseif o == 'C' # Cisor
      return 'Y'
    end

  elseif s == 'Y' # draw
    if o == 'A' # Rock
      return 'X'
    elseif o == 'B' # Paper
      return 'Y'
    elseif o == 'C' # Cisor
      return 'Z'
    end

  elseif s == 'Z' # win
    if o == 'A' # Rock
      return 'Y'
    elseif o == 'B' # Paper
      return 'Z'
    elseif o == 'C' # Cisor
      return 'X'
    end
  end
end

s = sum(map(
  # (x) -> to_points(x[1], x[3]),
  (x) -> to_points(x[1], to_strat(x[1], x[3])),
  eachsplit(
    open("input.txt") do file
        read(file, String)
    end,
    "\n"
  )
))

println(s)
