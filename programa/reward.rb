require_relative 'user.rb'

class Reward
  def winer(contador)
    @contador = contador
    puts "¡Felicidades, ha ganado!, ha obtenido #{contador-1} puntos"
    abort
  end
end
