def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
 shop[:admin][:total_cash] += cash
end

def pets_sold(total_sold)
  total_sold[:admin][:pets_sold]
end

def increase_pets_sold(total_sold, num)
total_sold[:admin][:pets_sold] += num
end

def stock_count(total_pets)
total_pets[:pets].count
end

def pets_by_breed(pet_shop, breed)
  found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      found.push(pet)
    end
  end
  return found
end


def find_pet_by_name(pet_shop, name)
  found = nil
  for pet in pet_shop[:pets]
    if pet[:name] == name
      found = pet
    end
  end
  return found
end

def remove_pet_by_name(pet_shop, name)
  pet = find_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(pet)
end

def add_pet_to_stock(total_pets, pet)
total_pets[:pets].push(pet)
end

def customer_cash(cust)
 cust [:cash]
end

def remove_customer_cash(cust, cash)
  cust[:cash]-= cash
end

def customer_pet_count(cust)
  return cust[:pets].length
end

def add_pet_to_customer(cust, pet)
  cust[:pets].push(pet)
end
