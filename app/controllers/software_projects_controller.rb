class SoftwareProjectsController < ApplicationController 
    def show 
        @sproject = SoftwareProject.find(params[:id])
    end

    def index 
        @sprojects = SoftwareProject.all
    end

    def new 
        @sproject = SoftwareProject.new
    end

    def create 
        @sproject = SoftwareProject.new(params.require(:software_project).permit(:title, :description, :body))
        if @sproject.save
            flash[:notice] = 'Way to go! Project created!!'
            redirect_to @sproject
        else 
            flash[:error] = 'Ooops!!! project not created.'
            render 'new'
        end
    end
end