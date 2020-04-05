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
 
  final_cart = []
    cart.each do |hash|
      #binding.pry
      i=0
      while i < cart.length do
        if hash[:item] = cart[:item]
        binding.pry
        end
      i+=1
    end
end


  