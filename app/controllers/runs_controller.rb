class RunsController < ApplicationController
    before_action :set_user

    def index 
        runs = @user.runs
        binding.pry
        if runs.length > 0
            render json: runs
        else
            render json: {message: 'No runs logged.'}
        end
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
        binding.pry
        @user = User.find_by(id: params[:user_id])
    end
end
