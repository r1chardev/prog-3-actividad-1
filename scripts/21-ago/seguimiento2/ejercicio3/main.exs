defmodule Main do

  def main()do
    nombre=Util.pedir_dato("Ingrese su nombre:")
    horas_trabajadas = String.to_integer(Util.pedir_dato("Ingrese las horas trabajadas: "))
    sueldo = String.to_integer(Util.pedir_dato("Ingrese el valor de su hora trabajada: "))
    sueldo_neto=Util.calcular_salario_neto(sueldo,horas_trabajadas)
    Util.mostrar_mensaje("El empleado #{nombre} tiene un sueldo neto de #{sueldo_neto}")
  end
end

Main.main()
