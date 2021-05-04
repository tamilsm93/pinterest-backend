class ArticlesController < ApplicationController

    # before_action: set_article, only: [:show, :update, :destroy]

    def index
        if (params[:id].present?)
            current_user = User.find_by(id: params[:id])
            @articles = current_user.articles.all.order(created_at: :desc)
            render json: @articles
        else 
            @articles =   Article.all.where.not(id: params["user_id"]).reverse       
            render json: @articles, status: :created
        end
        
    end

    def create
        # user_name = User.find_by(id: params["user_id"]).first_name
        @article = Article.new(article_params) 
        
    
         
        if @article.save
            render json: @article, status: :created
        else
            render json: @article, status: :unprocessable_entity
        end
    end

    def show
        render json: @article
    end

    def update
     if @article = Article.update(article_params)
         render json: @user, status: :updated
     else
        render json: @user, status: :unprocessable_entity
      end  
    end

   

    def destroy   
        @article = Article.find_by(id: params["article"]["id"])
        @article.destroy
       
        @articles = Article.getArticle
        render json: @articles
    end
        
 
    private

    def set_article
      @article = current_user.article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:article_name, :user_id, :article_description, :image, :tags, :category).merge(user_name: User.find_by(id: params["user_id"]).first_name)
    end
end
