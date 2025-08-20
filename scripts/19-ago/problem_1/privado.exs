defmodule Secuencial do
  defp mensaje_privado(mensaje) do
    mensaje
    |> IO.puts()
  end

  def mostrar_mensaje() do
    mensaje_privado("Bienvenidos a la empresa Once Ltda")
  end
end

Secuencial.mostrar_mensaje()
