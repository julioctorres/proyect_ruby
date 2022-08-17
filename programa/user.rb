require_relative 'questions.rb'

class User 


  @@Id = 0
  @@nombre = ""
  @@points = 0
    
  def initialize
    @questions = Questions.new
  end

  def decision
    puts "marque: 1) agregar usuario, 2) eliminar usuario, 3) ver usuarios"
    options = gets.to_i 
    case options
      when 1
        create_user
      when 2
        delete_user
      when 3
        watch_user
      else
        "Error: ha marcado una respuesta erronea (#{options})"
        decision  
    end
  end
    
  def create_user
    puts "ingrese su Id"
    @@Id = gets.to_i
    puts "Ingrese su nombre"
    @@name = gets.to_s
    new_users = {"Id" => @@Id, "name" => @@name, "points" => @@points}
    load_user(new_users)
  end

  def load_user(new_users)
    File.write("users.txt", new_users)
    puts "Se ha cargado el usuario satisfactoriamente."
    @questions.bank_questions(@@points)
  end

  def delete_user
    puts "Ingrese el Id del usuario"
    @@Id = gets.to_i
    File.open('text.txt', 'w')    
    new_users.each do |clave, valor|
      if  valor == @@Id 
        new_users.delete("Id")
        new_users.delete("name")
        new_users.delete("points")
        puts "El usuario ha sido eliminado exitosamente"
      end
    end
    decision 
  end

  def watch_user
     puts File.read("users.txt")
  end
end
