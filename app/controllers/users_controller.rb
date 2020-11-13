class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.new
        user.username = params[:username]
        user.password = params[:password]
        binding.pry
        if user.save
            render json: user
          else
            render json: {message: "Signup Failed - Username must be unique."}
          end
    end

    def login 
        user = User.find_by(username: params[:username])
        if (user && user.authenticate(params[:password]))
          render json: user
        else
          render json: {message: "User Not Found. Click on Sign Up to make a new account."}
        end
      end

    private

    def user_params
        params.require(:user).permit(:username, :password)
      end

end
