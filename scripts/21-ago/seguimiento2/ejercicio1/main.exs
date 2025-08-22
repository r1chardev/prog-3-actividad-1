defmodule Main do

  def main()do
    Util.pedir_dato("Ingrese un mensaje: ")
    |>Util.convertir_uppercase()
    |>Util.mostrar_mensaje()
  end
end

Main.main()
