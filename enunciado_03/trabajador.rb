class Trabajador
  attr_reader :dni, :nombre
  attr_writer :apellido
  attr_accessor :sueldo_base, :tipo # planilla (+300), por horas(+400), parcial(+500)

  def initialize(dni, nombre, apellido, sueldo_base, tipo)
    @dni = dni
    @nombre = nombre
    @apellido = apellido
    @sueldo_base = sueldo_base
    @tipo = tipo
  end

  def calcular_sueldo()
    case @tipo
    when "planilla"
      @sueldo_base + 300
    when "por horas"
      @sueldo_base + 400
    when "parcial"
      @sueldo_base + 500
    end
  end
end
