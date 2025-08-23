defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
  Muestra un mensaje a través de un panel en Java.

  ## Parametros
  * `mensaje` - Mensaje a mostrar
  """
  def mostrar_mensaje(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
  llama al metodo en java y toma el mensaje ingresado por el usuario.

  ## Parametros
  * `data` - información que se le pasará a java
  """
  def pedir_dato(data) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  @doc """
  Cuenta cuantas letras hay en el mensaje (excluyendo espacios y otros caracteres).

  ## Parametros
  * `mensaje` - String al que se le va a contar cuantas letras tiene
  """
  def contar_letras(message) do
    message
    |> String.replace(~r/[^a-zA-ZáéíóúÁÉÍÓÚñÑüÜ]/, "")
    |> String.length()
  end

  @doc """
  Muestra el resultado del conteo de letras por consola.

  ## Parametros
  * `mensaje` - mensaje al que se le contaron la cantidad de letras
  * `cantidad_letras` - muestra la cantidad de letras de el mensaje
  """
  def mostrar_resultado(mensaje, cantidad_letras) do
    IO.puts("El mensaje '#{mensaje}' tiene #{cantidad_letras} letras")
  end
end
