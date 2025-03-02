class ProductsController < ApplicationController
  def index
    @products = FakeStoreService.get_products
    render json: @products
  end

  def show
    @product = FakeStoreService.get_products.find { |product| product["id"] == params[:id].to_i }
    if @product
      render json: @product
    else
      render json: { error: "Product not found" }, status: :not_found
    end
  end
end
