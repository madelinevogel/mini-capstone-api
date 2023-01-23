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
    price <= 10
  end

  def tax
    result = price * 0.09
  end

  def total
    price + tax
  end
end
