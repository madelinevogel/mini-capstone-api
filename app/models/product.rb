class Product < ApplicationRecord
  # def is_discounted?
  #   if price <= 10
  #   return true
  # end

  # while true
  #   puts "Enter a number: "
  #   input = gets.chomp
  #   if input.to_i > 10
  #     break
  #   end
  # end

  def is_discounted?
    if price <= 10
      result = true
      return result
    else
      result = false
      return result
    end
  end

  def tax
    result = price * 0.09
    return result
  end

  def total
    result = price + tax
    return result
  end
end
