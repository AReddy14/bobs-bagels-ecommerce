class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @product = Product.find(params[:id])
    @category = Category.find(params[:id])
    render json: @category
  end

  private

  def categories_params
    params.permit(:name, :category_id)
  end

end
