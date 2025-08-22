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
     Pasa el mensaje a mayusculas sostenidas.
    """
    def convertir_uppercase(message) do
      String.upcase(message)
    end
  end
