require_relative 'reward.rb'
require_relative 'questions.rb'

class Category 
  def initialize
    @reward = Reward.new
  end

  def category_change(contador)
    @contador = contador
    @contador += 1
    
    if contador == 5
      @reward.winer(@contador)
    end
    return @contador
  end
end