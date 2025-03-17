calificaciones = {%{nombre: "nombre", nota: 4}, %{nombre: "nombre2", nota: 8}}
nombre = IO.gets("ingrese el nombre")

def evaluar_proyecto(calificaciones, nombre) do
  if nombre == calificaciones.nombre do
    promedio = Enum.reduce({nota, _}) / lenght(calificaciones)

    if promedio >= 6 do
      estado = "aprobado"
    end
  else
    promedio = "reprobado"
  end

  {promedio, estado}
else
  {0, "no encontrado"}
end
