ventas = %{}

defp actualizar_ventas(ventas) do
  if %{} == ventas do
    total = Enum.reduce({valor, _}, 0, fn x, acc -> acc = x + acc end)
    promedio = total / lenght(ventas)
    {total, promedio, Enum.sort(ventas)} |> Enum.take(1)
  end
else
  {0, 0, "no hay datos"}
end
