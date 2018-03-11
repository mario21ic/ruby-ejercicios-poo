require 'test/unit'

require './trabajador'

 
class MiPrimerTest < Test::Unit::TestCase
  def setup
    @mario = Trabajador.new(44489174, "Mario", "Inga", 250, "planilla")
  end

  def teardown
    @mario = nil
  end

  def test_sueldo_planilla
    @mario.tipo = "planilla"
    assert_equal @mario.calcular_sueldo, 550
  end
    
  def test_sueldo_por_horas
    @mario.tipo = "por horas"
    assert_not_equal @mario.calcular_sueldo, 550
    assert_equal @mario.calcular_sueldo, 650
  end
    
  def test_sueldo_parcial
    @mario.tipo = "parcial"
    assert_not_equal @mario.calcular_sueldo, 650
    @mario.sueldo_base = 300
    assert_equal @mario.calcular_sueldo, 800
  end
end
