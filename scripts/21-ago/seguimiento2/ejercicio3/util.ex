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
    la funcion recibe el sueldo y las horas trabajadas, con esto calcuula el sueldo neto.
    """
    def calcular_salario_neto(sueldo,horas)do
      sueldo_neto=0
      if horas>160 do
        sueldo_neto=(sueldo*160)+((sueldo*1.25)*(horas-160))
      else
        sueldo_neto=sueldo*horas
      end
    end
  end
