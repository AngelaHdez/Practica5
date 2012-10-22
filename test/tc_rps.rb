
require "/home/alu4079/Desktop/LPP repositorio/practica 5/lib/rps"
require "test/unit"


class TestRockPapperScissors < Test::Unit::TestCase

        def setup
		#def test variable
	end

	def teardown
		#nothing to do
	end
#***********************************test de juego**************************
	def test_play_1
	  30.times do
	    assert correct_answer(RockPapperScissors.play('tijeras'))
		end	
	
		30.times do
		  assert correct_answer(RockPapperScissors.play('papel'))
  	end #acaba test_play

    30.times do
  		assert correct_answer(RockPapperScissors.play('piedra'))
  	end  	
	end #acaba test_play

#******************** Wrong play ****************************************
 	def test_wrong_play
        	assert_raise (SyntaxError) {RockPapperScissors.play("huracan")}
 	end

#********** Ver si las respuestas no se repiten *************************
 	def correct_answer(x)
 	return true if x =- /Empate: /
 	end
end	
