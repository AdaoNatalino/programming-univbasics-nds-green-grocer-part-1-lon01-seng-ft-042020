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
  cart.each do |item|
    found_item = find_item_by_name_in_collection(item[:item], cart)
      if found_item
      final_cart.each do |final_cart_item|
        if final_cart_item[:item] == found_item[:item]
          final_cart_item[:count] +=1
        else
          final_cart_item[:count] = 1
        end
      end
      end
    #   i=0
    #   while i < cart.length do
    #     #binding.pry
    #     if hash[:item] == cart[i][:item]
    #       if final_cart
    #         final_cart[i][:count] += 1
    #       else
    #       final_cart[i] = {}
    #       final_cart[i][:count] = 1
    #       end
    #     end
    #     #binding.pry
    #   i+=1
    # end
  end
  return final_cart
end


  