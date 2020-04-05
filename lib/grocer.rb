require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    #binding.pry
    if hash[:item] === name
      return hash
    end
  end
  return nil
end

def consolidate_cart(cart)
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  final_cart = []
  cart.each do |hash|
    
    if final_cart.include?
    final_cart.push(hash)
    
    binding.pry 
  end
    


end


  