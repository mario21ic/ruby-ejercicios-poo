require './trabajador'

puts "=============="
mario = Trabajador.new(44489174, "Mario", "Inga", 250, "planilla")
puts "Trabajador: #{mario.nombre} \nTipo: #{mario.tipo} \nSueldo base: #{mario.sueldo_base} \nSueldo total: #{mario.calcular_sueldo}"

puts "=============="
mario.tipo = "por horas"
puts "Trabajador: #{mario.nombre} \nTipo: #{mario.tipo} \nSueldo base: #{mario.sueldo_base} \nSueldo total: #{mario.calcular_sueldo}"

puts "=============="
mario.sueldo_base = 300
mario.tipo = "parcial"
puts "Trabajador: #{mario.nombre} \nTipo: #{mario.tipo} \nSueldo base: #{mario.sueldo_base} \nSueldo total: #{mario.calcular_sueldo}"
