defmodule Main do
  def main() do
    mensaje = Util.pedir_dato("Ingrese un mensaje: ")
    cantidad_letras = Util.contar_letras(mensaje)
    Util.mostrar_resultado(mensaje, cantidad_letras)
  end
end

Main.main()
