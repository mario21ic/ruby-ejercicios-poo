require 'test/unit'

require './enunciado_01'

 
class MiPrimerTest < Test::Unit::TestCase
  def setup
    @alumno = Alumno.new("U2014", "Mario", 0, 0)
  end

  def teardown
    @alumno = nil
  end

  def test_aprobado
    @alumno.t1 = 85
    @alumno.t2 = 85
    assert_equal @alumno.get_status, "Aprobado"

    @alumno.t1 = 90
    @alumno.t2 = 85
    assert_equal @alumno.get_status, "Aprobado"

    @alumno.t1 = 85
    @alumno.t2 = 90
    assert_equal @alumno.get_status, "Aprobado"
  end

  def test_desaprobado
    @alumno.t1 = 80
    @alumno.t2 = 77
    assert_equal @alumno.get_status, "Reprobado"
  end

  def test_observado
    @alumno.t1 = 85
    @alumno.t2 = 79
    assert_equal @alumno.get_status, "Observado"

    @alumno.t1 = 79
    @alumno.t2 = 85
    assert_equal @alumno.get_status, "Observado"
  end
end
