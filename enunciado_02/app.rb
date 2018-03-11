class App
  attr_reader :numero1, :numero2

  def lanzar_dados
    dado1 = Dado.new()
    dado2 = Dado.new()
    @numero1 = dado1.lanzar
    @numero2 = dado2.lanzar
    
    return get_resultado(numero1 + numero2)
  end

  def get_resultado(sumatoria)
    resultado = "Indefinido"
    if sumatoria == 7 || sumatoria == 11
      resultado = "Perdiste"
    end
    if sumatoria == 2 || sumatoria == 12
      resultado = "Ganaste"
    end

    return resultado
  end
end 

