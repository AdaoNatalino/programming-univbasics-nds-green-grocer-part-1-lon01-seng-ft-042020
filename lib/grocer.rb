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
    i=0
    while i < cart.length do
      #binding.pry
      if final_cart.includes? cart[i][:item]
        final_cart[i][:count] +=1
        else
        final_cart[i] = cart[i] 
      end
      binding.pry
      y+=1
    end
end


  