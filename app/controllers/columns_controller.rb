class ColumnsController < ApplicationController

    def create 
        column = Column.create(column_params)
        render json: column
    end

    private

    def column_params
        params.require(:column).permit(:title, :project_id)
    end
end
