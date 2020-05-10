#1 done
def pet_shop_name(shop)
  return shop[:name]
end

#2 done
def total_cash(shop)
  return shop[:admin][:total_cash]
end

#3 and 4 finally done
def add_or_remove_cash(shop, sum)
 shop[:admin][:total_cash] += sum
end

#5 done
def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

#6 done
def increase_pets_sold(shop, amount)
shop[:admin][:pets_sold] += amount
end

#7 done
def stock_count(shop)
  return shop[:pets].length
end

#8 and 9
# def pets_by_breed(shop, breed)
#   pets_found = []
#   pets_array = shop[:pets]
#   for pet in pets_array
#     if pet[:breed]== breed
#       pets_found.push(pet)
#     end
#   end
#   return pets_found
# end

#8 and 9
def pets_by_breed(shop, breed)
  pets_found = []
  pets_array = shop[:pets]
  for pet in pets_array
     pet[:breed]== breed ? pets_found.push(pet) : (return pets_found)
  end
end

#10 and 11
def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

#12
def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
     pet[:name]== pet_name ? shop[:pets].delete(pet): nil
  end
end

#13 done
def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
  return stock_count(shop)
end

#14 done
def customer_cash(customer)
  return customer[:cash]
end

#15 done
def remove_customer_cash(customer, amount)
  customer[:cash]-= amount
end

#16 done
def customer_pet_count(customer)
  return customer[:pets].count
end
#17 done
def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
  return customer[:pets].length()
end
#18 and 19 and 20 done
def customer_can_afford_pet(customer, pet)
    customer[:cash] >= pet[:price] ? true : false
end

#21 and 22 and 23 doesnt work 100%

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil || customer[:cash]>= pet[:price]
return
  else
  add_pet_to_customer(customer, pet)
  shop[:admin][:pets_sold] += 1
  remove_customer_cash(customer, pet[:price])
  add_or_remove_cash(shop, pet[:price])
  end
end

#22
