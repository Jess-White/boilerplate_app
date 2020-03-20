class Api::CategoriesController < ApplicationController

    def index
      @categories = Category.all

      @categories = @categories.order(id: :asc)
      
      render 'index.json.jb'
      
  end 

  def create
    @category = Category.new(
                         name: params[:name],
                         created_at: params[:created_at],
                         updated_at: params[:updated_at]
                        )
    if @category.save
      render "show.json.jb"
    else
      render json: {errors: @category.errors.messages}, status: :unprocessable_entity
    end
  end

  def show
    @category = Category.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @category = Category.find(params[:id])

    @category.name = params[:name] || @category.name

    @category.save
    render 'show.json.jb'
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    render json: {message: "Category successfully destroyed"}
  end
end
