input = File.read!("lib/day_1_input.txt") |> String.split("\n", trim: true)

input
|> Enum.map(fn s ->
  numbers =
    s
    |> String.replace(~r/[^\d]/, "")
    |> String.codepoints()

  data = List.first(numbers) <> List.last(numbers)
  {result, _} = Integer.parse(data)

  IO.inspect(result, label: s)
  result
end)
|> Enum.sum()
|> IO.inspect(label: "Result")
