class Article < ApplicationRecord
    has_many :categories
    belongs_to :user

    validates :article_name, :article_description, :tags, presence: true


    def self.getArticle
        Article.all.order(created_at: :desc)
    end

    def self.articleFeed
       
         
      
         
         binding.pry
         
    end
end
