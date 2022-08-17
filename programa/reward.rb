require_relative 'user.rb'

# Autors: Julio César Torres 
# Class name: Reward
# check the winner
# create metod winer

class Reward #Create class Reward
  def winer(contador) #Create class winer
    @contador = contador 
    puts "¡Felicidades, ha ganado!, ha obtenido #{contador-1} puntos" #Message winer 
    abort # Exit game
  end
end
