lista = []
porcentaje = IO.gets("ingrese el porcentaje de descuento") |> String.trim() |> String.to_integer()

def calcular_descuento(lista, porcentaje) do
  if lista == [] do
    {[], 0}
  end
else
  Enum.map(lista, fn {_, precio, _} ->
    listadescuentos = [] ++ [x = precio - precio * porcentaje / 100]
  end)

  total = Enum.suma(listadescuentos)
  {listadescuentos, total}
end
