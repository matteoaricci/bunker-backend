class UsersController < ApplicationController
    def show
        # User.find :all, :includes => {projects: [columns: [:tasks]]}
        render json: User.all, :include => {:owners => {:include => [:columns => {:include => [:tasks]}]}}
        # Book.find :all, :include => {:comments => {:user => :favourite_books}}
    end
end
