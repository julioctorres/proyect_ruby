require_relative 'questions.rb'

class User 
    def initialize
        @questions = Questions.new
    end


    @@Id = 0
    @@nombre = ""
    @@puntos = 0
    
    
    def create_user
        puts "ingrese su Id"
        @@Id = gets.to_i
        puts "Ingrese su nombre"
        @@name = gets.to_s
        new_users = {"Id" => @@Id, "name" => @@name, "puntos" => @@puntos}
        load_user(new_users)
    end

    def load_user(new_users)

        puts "Se ha cargado el usuario satisfactoriamente."
        @questions.bank_questions(@@puntos)
    end

    def delete_usuario
        puts "Ingrese el Id del usuario"
        @@Id = gets.to_i
        new_users = {"Id" => 4, "name" => "Julio",  "puntos" => 0}
    
        new_users.each do |clave, valor|
            if  valor == @@Id 
                new_users.delete("Id")
                new_users.delete("name")
                new_users.delete("puntos")
                puts "El usuario ha sido eliminado exitosamente"
            end
        end
        @start.start_game
    end
end
