class UsersController < ApplicationController

    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
        
       if @user.save!
        render json: @user, status: :created
       else
        render json: @user, status: :unprocessable_entity
       end
    end

    def show
        render json: @user
    end

    def update
        if @user.update(user_params)
            render json: @user, status: :updated
        else
            render json: @user, status: :unprocessable_entity
        end  
    end

   

    def destroy
        @user.destroy
    end
        
 
    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:first_name, :last_name, :email, :phone, :dob, :password,
                                        :confirm_password, :article_preference )
    end

end
