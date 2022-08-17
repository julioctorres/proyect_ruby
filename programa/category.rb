require_relative 'reward.rb'

# Autors: Julio César Torres 
# Class name: Category
# controller category change
# create metod category_change 

class Category 
  def initialize # builder
    @reward = Reward.new #  Reward class instance
  end

  def category_change(contador) #Create metodh category_hange
    @contador = contador #builder category
    @contador += 1 # incremental counter
    
    if contador == 5  # Questions winner
      @reward.winer(@contador) #call method winer 
    end
    return @contador #return counter value
  end
end