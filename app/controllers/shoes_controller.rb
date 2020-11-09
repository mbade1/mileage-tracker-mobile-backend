class ShoesController < ApplicationController
    before_action :set_user
    def index 
        render json: @user.shoes
    end

    def show 
        shoe = @user.shoes.find_by(id: params[:id])
        render json: shoe
    end

    private

    def set_user
        @user = User.find_by(id: params[:user_id])
    end
end
