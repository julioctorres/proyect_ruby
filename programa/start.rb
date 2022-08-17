require_relative 'user.rb'

# Autors: Julio César Torres 
# Class name: Start
# initialize the project
# create metod start_game 

class Start

  def initialize # builder
    @user = User.new #user class instance
  end

  def start_game #method Start_game 
        
    puts "-------------------------------------------------------------------------"
    puts "Bienvenido a reto 5, por favor ingrese alguna de las siguientes opciones."
    puts "-------------------------------------------------------------------------"
    puts "marque: 1) Desea iniciar el juego, 2) desea salir del juego"

    options = gets.to_i 
    case options
      when 1
        @user.decision #start game
        
      when 2
        puts "Muchas gracias por participar." #exit game

      else
        "Error: ha marcado una respuesta erronea (#{options})" #wrong answer
        start_game  
    end
  end
end

ini = Start.new.start_game #Start Game