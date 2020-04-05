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
        #binding.pry
        if !hash[:item] == cart[i][:item]
            final_cart[i] = cart[i]
            final_cart[i][:count] = 1
        #binding.pry
      else
        final_cart[i][:count] = final_cart[i][:count] + 1
        end
        binding.pry
      i+=1
    end
  end
end


  