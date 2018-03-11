require "./alumno"

mario = Alumno.new("U2014", "Mario", 85, 85)
puts mario.get_status

mario.t1 = 85
mario.t2 = 80
puts mario.get_status

mario.t1 = 80
mario.t2 = 80
puts mario.get_status
