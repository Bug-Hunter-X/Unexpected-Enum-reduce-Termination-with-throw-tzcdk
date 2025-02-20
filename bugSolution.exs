```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, {0, true}, fn x, {acc, cont} ->
  if cont and x == 3 do
    {acc, false}  # Set cont to false to signal skipping further operations
  else
    {acc + x, cont} 
  end
)

IO.puts("Sum: #{elem(result, 0)}")
```