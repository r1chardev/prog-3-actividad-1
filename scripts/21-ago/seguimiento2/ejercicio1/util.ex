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
  Pasa un String a mayusculas sostenidas

  ## Parametros
  * `message` - String que se pasará a Mayusculas sostenidas
  """
  def convertir_uppercase(message) do
    String.upcase(message)
  end
end
