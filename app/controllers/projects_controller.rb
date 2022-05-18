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

    def edit 
        @project = Project.find(params[:id])
    end

    def update 
        @project = Project.find(params[:id])
        if @project.update(params.require(:project).permit(:title, :description, :body))
            flash[:notice] = 'Project updated!'
            redirect_to @project 
        else 
            render 'edit'
        end
        

    end
end