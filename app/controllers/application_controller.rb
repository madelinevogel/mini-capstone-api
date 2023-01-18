class ApplicationController < ActionController::Base
  def all_products
    @products = Product.all
    render template: "products/index"
  end
end
