require_relative 'questions.rb'

# Autors: Julio César Torres 
# Class name: User
# crud of users
# parameters or attributes: Id, nombre, points
# create metod: decision, create_user, load_user, watch_user, delete_user


class User 
  
  # Create attributes
  @@Id = 0
  @@nombre = ""
  @@points = 0
    
  def initialize #builder
    @questions = Questions.new
  end

  def decision #create method decision
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
    
  def create_user #Create method user
    #information request to create user 
    puts "ingrese su Id"
    @@Id = gets.to_i
    puts "Ingrese su nombre"
    @@name = gets.to_s
    new_users = {"Id" => @@Id, "name" => @@name, "points" => @@points} #Hash user information
    load_user(new_users)
  end

  def load_user(new_users) #Create method load_user
    File.write("users.txt", new_users) #Load information user
    puts "Se ha cargado el usuario satisfactoriamente."
    @questions.bank_questions(@@points) #Call method bank_questions
  end

  def delete_user #Create method delete_user
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

  def watch_user  #Create method watch_user
     puts File.read("users.txt") # user visualization
  end
end
