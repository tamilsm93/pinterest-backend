class CategoriesController < ApplicationController
     def index
      @categories = Category.all  
      render json: @categories
    end

    def create
       @category = category.create(category_params) 

    end

    private

    def category_params
        params.permit(:category_name, :article_id, :user_id)
    end
end
