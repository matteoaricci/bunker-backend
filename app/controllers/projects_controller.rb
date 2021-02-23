class ProjectsController < ApplicationController

    def starter_columns
        return ['Ice Box', 'To Do', 'Needs Review', 'Complete']
    end

    def create 
        project = Project.create(title: params[:title], user_id: params[:user_id])
        starter_columns.each do |column| 
            Column.create(title: column, project_id: project.id) 
        end
        render json: project, :include => {:columns => {:include => [:tasks]}}
    end

    def show 
        project = Project.find(params[:id])
        render json: project, :include => {:columns => {:include => [:tasks]}}
    end
end
