class ProjectsController < ApplicationController

    def create 
        project = Project.create(title: params[:title], user_id: params[:user_id])
        render json: project
    end
end
