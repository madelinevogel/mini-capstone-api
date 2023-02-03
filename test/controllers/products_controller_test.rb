require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Admin", email: "admin@test.com", password: "password", admin: true)
    post "/sessions.json", params: { email: "admin@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/products.json"
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal Product.count, data.length

    category = Category.first
    get "/products.json?category=#{category.name}"
    data = JSON.parse(response.body)
    assert_equal category.products.length, data.length
  end

  test "show" do
    get "/products/#{Product.first.id}.json"
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal ["id", "name", "price", "description", "is_discounted?", "tax", "total", "supplier_id", "images", "created_at", "updated_at", "categories", "inventory"].sort, data.keys.sort
  end

  test "create" do
    assert_difference "Product.count", 1 do
      post "/products.json", params: { name: "test product", price: 1, description: "test description", supplier_id: Supplier.first.id }, headers: { "Authorization" => "Bearer #{@jwt}" }
    end

    post "/products.json", params: {}, headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 422

    post "/products.json", params: {}
    assert_response 401
  end

  test "update" do
    product = Product.first
    patch "/products/#{product.id}.json", params: { name: "Updated name" }, headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal product.price.to_s, data["price"]
    assert_equal product.description, data["description"]
    # assert_equal product.quantity, data["quantity"]

    patch "/products/#{product.id}.json", params: { price: 0 }, headers: { "Authorization" => "Bearer #{@jwt}" }
    assert_response 422

    patch "/products/#{product.id}.json", params: {}
    assert_response 401
  end
  test "destroy" do
    assert_difference "Product.count", -1 do
      delete "/products/#{Product.first.id}.json", headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end

    delete "/products/#{Product.first.id}.json"
    assert_response 401
  end
end
