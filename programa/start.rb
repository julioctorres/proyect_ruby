require_relative 'user.rb'

class Start

  def initialize
    @user = User.new
  end

  def start_game
        
    puts "-------------------------------------------------------------------------"
    puts "Bienvenido a reto 5, por favor ingrese alguna de las siguientes opciones."
    puts "-------------------------------------------------------------------------"
    puts "marque: 1) Desea iniciar el juego, 2) desea salir del juego"

    options = gets.to_i 
    case options
      when 1
        @user.decision
        
      when 2
        puts "Muchas gracias por participar."

      else
        "Error: ha marcado una respuesta erronea (#{options})"
        start_game  
    end
  end
end

ini = Start.new.start_game