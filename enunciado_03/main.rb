class Empresa
  attr_reader :nombre
  attr_writer :apellido
  attr_accessor :sueldo_base

  def initialize(nombre)
    @nombre = nombre
    @ventas = Hash.new
  end

  def agregar_ventas(mes, venta)
    @ventas[mes] = venta
  end

  def total_ventas()
    total = 0
    @ventas.each do |key, value|
      total = total + value
    end
    return total
  end

  def mes_mayor_venta()
    mayor_mes = ""
    mayor_venta = 0
    @ventas.each do |mes, venta|
      if venta >= mayor_venta
        mayor_mes = mes
      end
    end
    return mayor_mes
  end

  def mes_menor_venta()
    menor_mes = ""
    menor_venta = 0
    @ventas.each do |mes, venta|
      if menor_venta == 0
        menor_venta = venta
      end
      if venta < menor_venta
        menor_mes = mes
        menor_venta = venta
      end
    end
    return menor_mes
  end

  def promedio_ventas()
    total = 0
    @ventas.each do |key, value|
      total = total + value
    end
    return total/6
  end

  def meses_mas_promedio()
    promedio = promedio_ventas()
    meses = []
    @ventas.each do |mes, venta|
      if venta > promedio
        meses.push(mes)
      end
    end
    return meses
  end
end

puts "=============="
empresa = Empresa.new("Ventas SAC")
empresa.agregar_ventas("enero", 102)
empresa.agregar_ventas("febrero", 93)
empresa.agregar_ventas("marzo", 131)
empresa.agregar_ventas("abril", 75)
empresa.agregar_ventas("mayo", 80)
empresa.agregar_ventas("junio", 110)
puts "Total #{empresa.total_ventas}"
puts "Mayor #{empresa.mes_mayor_venta}"
puts "Menor #{empresa.mes_menor_venta}"
puts "Promedio #{empresa.promedio_ventas}"
puts "Mas promedio #{empresa.meses_mas_promedio}"
