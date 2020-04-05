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
  cart.each do |item_hash|
    found_item = find_item_by_name_in_collection(item_hash[:item], cart)
    #binding.pry
    if found_item
      binding.pry
      final_cart.each do |final_cart_hash|
        if final_cart_hash[:item] == found_item[:item]
          final_cart_item[:count] +=1
          else
            final_cart_item[:count] = 1
        end
      end
    else
      item_hash[:count] +=1
      final_cart.push(item_hash)
      #binding.pry
    end
  end
  return final_cart
end


  