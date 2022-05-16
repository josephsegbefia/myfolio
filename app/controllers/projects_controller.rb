class ProjectsController < ApplicationController 
    def show 
        @project = Project.find(params[:id])
    end 

    def index 
        @projects = Project.all 
    end

    def new
        @project = Project.new
    end

    def create 
        @project = Project.new(params.require(:project).permit(:title, :description, :body))
        if @project.save 
            flash[:notice] = 'Project created!'
            redirect_to @project 
        else 
            render 'new'
        end
    end
end