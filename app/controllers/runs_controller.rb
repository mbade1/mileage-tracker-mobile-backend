class RunsController < ApplicationController
    before_action :set_user

    def index 
        runs = Run.all
        render json: @user.runs
    end

    def show 
        run = @user.runs.find_by(id: params[:id])
        if run 
            render json: run
        else
            render json: {message: 'Run not found.'}
        end
    end

    def destroy
        run = @user.runs.find_by(id: params[:id])
        run.destroy
    end

    private

    def set_user
        @user = User.find_by(id: params[:user_id])
    end
end
