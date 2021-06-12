class Admin::ProductsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      @category_array = params.dig(:product, :category_ids)
      @category_array.each do |cat|
        @category = Category.find(cat)
        @product.categories << @category
      end
      flash[:notice] = "Product added!"
      redirect_to admin_product_path
    else
      flash[:notice] = "Product cannot be blank!"
      render 'admin/product/new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      @product.product_categories.destroy_all
      @category_array = params.dig(:product, :category_ids)
      @category_array.each do |cat|
        @category = Category.find(cat)
        @product.categories << @category
      end
      flash[:notice] = "product updated!"
      redirect_to admin_product_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.destroy(params[:id])
    flash[:notice] = "product removed!"
    redirect_to admin_product_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
