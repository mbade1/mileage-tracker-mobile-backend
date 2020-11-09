class RunsController < ApplicationController
    def index 
        runs = Run.all
        render json: runs
    end
end
