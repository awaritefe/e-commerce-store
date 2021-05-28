class Admin::CategoriesController < ApplicationController

  before_action :authenticate_admin!

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category was added!"
      redirect_to admin_category_path
    else
      flash[:notice] = "Category cannot be blank!"
      render 'admin/product/new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category updated!"
      redirect_to admin_category_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.destroy(params[:id])
    flash[:notice] = "Category removed!"
    redirect_to admin_category_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end