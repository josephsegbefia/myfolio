class BlogsController < ApplicationController 

    def index 
        @blogs = Blog.all
    end

    def show 
        @blog = Blog.find(params[:id])
    end

    def new 
        @blog = Blog.new
    end

    def create 
        @blog = Blog.new(params.require(:blog).permit(:title, :body))
        if @blog.save 
            flash[:notice] = 'Story saved!'
            redirect_to @blog 
        else 
            flash[:error] = 'Story not saved!!'
            render 'new'
        end
    end

    def edit 
        @blog = Blog.find(params[:id])
    end

    def update 
        @blog = Blog.find(params[:id])
        if @blog.update(params.require(:blog).permit(:title, :body))
            flash[:notice] = 'Story was updated successfully'
            redirect_to @blog 
        else 
            render 'edit'
        end
    end
end