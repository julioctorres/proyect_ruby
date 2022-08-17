require_relative 'category.rb'

class Questions < Category
    @@questions = {}
    @@result = {}
  def bank_questions(contador)
    @@questions = {
              1 =>"Un tipo de archivo en el que todos los valores están delimitados por comas.",
              2 =>"Di si",
              3 =>"di nominapp",
              4 =>"di ciego",
              5 =>"di ganador"
        }
    @@result = {
          1 =>"CSV",
          2 =>"si",
          3 =>"nominapp",
          4 =>"ciego",
          5 =>"ganador"
        }
    realize_question(@@questions[category_change(contador)], @@result[category_change(contador)], contador)
  end

  def realize_question(questions, result, contador) 

    puts "Por favor ingrese la respuesta a la siguiente pregunta, #{questions}"
    response =gets.to_s.downcase
    result = result.to_s.downcase

    if response.gsub(/\s+/, "")  == result.gsub(/\s+/, "") 
      puts "---------------------------------"
      puts "Ha marcado la respuesta correcta "
      puts "--------------------------------- \n"
      contador += 1
      bank_questions(contador)
    end
      
    puts "Ha marcado la respuesta incorrecta"
    realize_question(questions,result, contador) 
  
  end
end 