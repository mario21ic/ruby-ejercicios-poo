class Alumno
  attr_reader :codigo, :nombre
  attr_writer :t1, :t2
  def initialize(codigo, nombre, t1, t2)
    @codigo = codigo
    @nombre = nombre
    @t1 = t1
    @t2 = t2
  end

  def get_status
    status = ""
    if @t1 >= 85 && @t2 >= 85
      status = "Aprobado"
    elsif @t1 >= 85 || @t2 >= 85
      status = "Observado"
    elsif @t1 <= 85 && @t2 <= 85
      status = "Reprobado"
    end
    return status
  end
end

