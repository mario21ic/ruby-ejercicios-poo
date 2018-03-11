require 'test/unit'

require './app'

class MiPrimerTest < Test::Unit::TestCase
  def setup
    @app = App.new
  end

  def teardown
    @app = nil
  end

  def test_resultado_perdiste
    resultado = @app.get_resultado(7)
    assert_equal resultado, "Perdiste"

    resultado = @app.get_resultado(11)
    assert_equal resultado, "Perdiste"
  end

  def test_resultado_ganaste
    resultado = @app.get_resultado(2)
    assert_equal resultado, "Ganaste"

    resultado = @app.get_resultado(12)
    assert_equal resultado, "Ganaste"
  end

  def test_resultado_indefinido
    resultado = @app.get_resultado(3)
    assert_equal resultado, "Indefinido"

    resultado = @app.get_resultado(4)
    assert_equal resultado, "Indefinido"

    resultado = @app.get_resultado(5)
    assert_equal resultado, "Indefinido"

    resultado = @app.get_resultado(6)
    assert_equal resultado, "Indefinido"

    resultado = @app.get_resultado(8)
    assert_equal resultado, "Indefinido"

    resultado = @app.get_resultado(9)
    assert_equal resultado, "Indefinido"

    resultado = @app.get_resultado(10)
    assert_equal resultado, "Indefinido"
  end
end
