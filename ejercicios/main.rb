require "./alumno"

alumno1 = Alumno.new("U2014", "alumno", 18, 15)
puts "Alumno: #{alumno1.nombre} con Codigo: #{alumno1.dame_codigo}"
alumno1.mostrar_notas()
promedio = alumno1.calcular_promedio
puts "Promedio: #{promedio}"

puts "=============="
alumno2 = Alumno.new("U208", "Jorge", 14, 19)
puts "Alumno: #{alumno2.nombre} con Codigo: #{alumno2.dame_codigo}"
alumno2.mostrar_notas()
puts "Promedio: #{alumno2.calcular_promedio}"

puts "=============="
alumno2.nota1 = 12
alumno2.nota2 = 14
puts "Alumno: #{alumno2.nombre} con Codigo: #{alumno2.dame_codigo}"
alumno2.mostrar_notas()
puts "Promedio: #{alumno2.calcular_promedio()}"
puts "=============="




