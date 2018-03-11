class Alumno
  attr_reader :nombre
  attr_writer :nota1, :nota2

  def initialize(codigo, nombre, nota1, nota2)
    @codigo = codigo
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
  end

  def calcular_promedio()
    (@nota1 + @nota2)/2
  end

  def dame_codigo
    @codigo
  end

  def mostrar_notas()
    puts "Nota1: #{@nota1} \nNota2: #{@nota2}"
  end
end


