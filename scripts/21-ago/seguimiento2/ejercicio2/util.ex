defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Displays a message using a Java dialog.
  """
  def mostrar_mensaje(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
    llama al metodo en java y toma el mensaje ingresado por el usuario.


  """
  def pedir_dato(data) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  @doc """
   Cuenta cuantas letras hay en el mensaje (excluyendo espacios y otros caracteres).
  """
  def contar_letras(message) do
    message
    |> String.replace(~r/[^a-zA-ZáéíóúÁÉÍÓÚñÑüÜ]/, "")
    |> String.length()
  end

  @doc """
   Muestra el resultado del conteo de letras por consola.
  """
  def mostrar_resultado(mensaje, cantidad_letras) do
    IO.puts("El mensaje '#{mensaje}' tiene #{cantidad_letras} letras")
  end
end
