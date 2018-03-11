require "./app"

juego = App.new()
resultado = juego.lanzar_dados
puts "Dado 1: #{juego.numero1} \nDado 2: #{juego.numero2} \nResultado: #{resultado}"
