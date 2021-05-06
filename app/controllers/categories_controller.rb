class CategoriesController < ApplicationController
    def show
        @category = Category(params[:id])
        @products = @category.products.all
    end
end
