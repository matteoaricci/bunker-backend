class TasksController < ApplicationController

    def create 
        task = Task.create(column_id: params[:column_id], description: params[:description])
        render json: task
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
        render json: task
    end
end
