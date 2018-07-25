require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test
  
  def test_it_exists
    pantry = Pantry.new
    
    assert_instance_of Pantry, pantry
  end
  
  def test_it_starts_with_empty_stock
    pantry = Pantry.new
  
    assert_equal {}, pantry.stock
  end
  
  def test_it_checks_stock
    pantry = Pantry.new
    
    assert_equal 0, pantry.check_stock("cheese")
  end
  
  def test_it_restocks
    pantry = Pantry.new 
    pantry.restock("Cheese", 10)
    assert equal {"Cheese" => 10}, pantry.stock
  end 
  
  def test_it_starts_with_empty_shopping_list
    pantry = Pantry.new
  
    assert_equal {}, pantry.shopping_list
  end

  def test_it_adds_to_shopping_list
    pantry = Pantry.new 
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    pantry.add_to_shopping_list(r)
    
    assert_equal {"Cheese Pizza" = {"Cheese" => 20, "Flour" => 20}}, pantry.shopping_list
  end
  
  def test_it_starts_with_empty_cookbook
    pantry = Pantry.new
  
    assert_equal [], pantry.cookbook
  end
  
  def test_it_adds_to_cookbook
    pantry = Pantry.new
    
    r1 = Recipe.new("Cheese Pizza")
    r1.add_ingredient("Cheese", 20)
    r1.add_ingredient("Flour", 20)

    r2 = Recipe.new("Pickles")
    r2.add_ingredient("Brine", 10)
    r2.add_ingredient("Cucumbers", 30)

    r3 = Recipe.new("Peanuts")
    r3.add_ingredient("Raw nuts", 10)
    r3.add_ingredient("Salt", 10)

    pantry.add_to_cookbook(r1)
    pantry.add_to_cookbook(r2)
    pantry.add_to_cookbook(r3)
    
    assert_equal [r1, r2, r3], pantry.cookbook
  end
  
  def test_what_i_says_i_can_make
    
  
  
  
  
  
  
  
  

end
