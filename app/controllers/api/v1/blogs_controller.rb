class Api::V1::BlogsController < ApplicationController
  def index
    @all = Blog.all
    render json:@all
  end

  def create
    @data = Blog.new(blog_params)
    if @data.save
      render json:{messagse:"success"}
    else
      render json:{message:"failed"}  
    end  
  end

  def update
    @data = Blog.find(params[:id])
    @data.update(blog_params)
    render json:@data
  end

  def show
    @data = Blog.find(params[:id])
    render json:@data
  end

  def destroy
    @data = Blog.find(params[:id])
    if @data.destroy
      render json:{messagse:"deleted"}
    else
      render json:{message:"failed"}  
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:description,:title,:publish_date)
  end  
end
