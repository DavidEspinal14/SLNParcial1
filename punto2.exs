inventario =
  {%{nombre: "producto1", cantidad: 10}, %{nombre: "producto2", cantidad: 20},
   %{nombre: "producto3", cantidad: 5}}

defp actualizar_inventario(inventario, producto, vendido) do
  if Enum.any?(inventario, fn {cantidad, _} -> nombre == producto end) do
    case vendido do
      vendido <= producto.cantidad ->
        inventario_actualizado = %{inventario | cantidad: producto.cantidad - vendido}

      vendido > producto.cantidad ->
        IO.puts(:error, "stock insuficiente")

      _ ->
        IO.puts(:error, "error dato invalido")
    end
  else
    IO.puts(:error, "no se ha encontrado el producto")
  end
end
