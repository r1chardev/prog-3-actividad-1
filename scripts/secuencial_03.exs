#modulo -> UpperCamelCase
defmodule Secuencial do

  #Funcion publica -> SnakeCase
  def mostrar_mensaje() do
    "Funcion publica"
    |> mensaje_privado()
  end

  defp mensaje_privado(mensaje)do
    mensaje
    |>IO.puts()
  end

end

# Secuencial.mensaje_privado("hola") Error: function is private
Secuencial.mostrar_mensaje()
