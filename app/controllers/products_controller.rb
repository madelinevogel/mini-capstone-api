class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      name: "Car Seat",
      price: 250,
      description: "Put in car to protect children",
    )

    render :show
  end
end
