require_relative 'category.rb'

# Autors: Julio César Torres 
# Class name: Questions
# ask questions and change the question
# parameters or attributes: questions and result
# create metod bank_questions and realize_question

class Questions < Category #Create Class Questions
    @@questions = {} #Create attribute question
    @@result = {} #Create attribute question

  def bank_questions(contador) #create method bank_questions
    #create questions and results
    @@questions = {
        1 =>"Un tipo de archivo en el que todos los valores están delimitados por comas.",
        2 =>"Di si",
        3 =>"di nominapp",
        4 =>"di ciego",
        5 =>"di ganador"
      } # hashes with questions 
    @@result = {
        1 =>"CSV",
        2 =>"si",
        3 =>"nominapp",
        4 =>"ciego",
        5 =>"ganador"
      } # hashes with answers

      #Call realize_question and export questions and results
    realize_question(@@questions[category_change(contador)], @@result[category_change(contador)], contador)
  end

  def realize_question(questions, result, contador)  #create method realize_question
    
    #realize question
    puts "Por favor ingrese la respuesta a la siguiente pregunta, #{questions}"
    response =gets.to_s.downcase
    result = result.to_s.downcase

    #ask if I answered correctly or not
    if response.gsub(/\s+/, "")  == result.gsub(/\s+/, "") 
      puts "---------------------------------"
      puts "Ha marcado la respuesta correcta "
      puts "--------------------------------- \n"
      contador += 1 #increase builder
      bank_questions(contador) #level up and go to the next question
    end
      
    puts "Ha marcado la respuesta incorrecta"
    realize_question(questions,result, contador) # wrong answer and ask again
  end
end 