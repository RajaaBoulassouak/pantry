class Pantry
  attr_reader :stock, 
              :shopping_list,
              :ingredients,
              :cookbook
  
  def initialize
    @stock = {} 
    @shopping_list = {}
    @ingredients = ingredients
    @cookbook = cookbook
  end
  
  def stock_check(ingredient)
    @stock.sum do |key, value|
      @stock[value]
    end
  end
  
  def restock(ingredient, amount)
    @stock[ingredient] = amount
  end 
  
  def add_to_shopping_list(recipe)
    @shopping_list[name] = ingredients
  end 
  
  def print_shopping_list
    puts @shopping_list.to_s
  end
  
  def add_to_cookbook(recipe)
    @cookbook << recipe 
  end
  
  def what_can_i_make
    @ingredients.find_all do |key, value|
      @ingredient.keys == @stock.keys
    end
  end
  
  def how_many_can_i_make
    @stock.map do |key, amount|
      @stock[amount] / @ingredient[amount]
    end 
  end
    
    



  time is over, but here I would have iterated over @stock.keys to see which @ingredients.keys are == to each other
    
    
    
    
    
    


  
  

end
