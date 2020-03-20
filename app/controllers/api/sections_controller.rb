class Api::SectionsController < ApplicationController
  def index
    @sections = Section.all

    @sections = @sections.order(id: :asc)
    
    render 'index.json.jb'
  end 

  def create
    @section = Section.new(
                        category: params[:category],
                        order: params[:order],
                        content: params[:content],
                        grant_id: params[:grant_id]
                      )
    if @section.save
      render "show.json.jb"
    else
      render json: {errors: @section.errors.messages}, status: :unprocessable_entity
    end
  end

  def show
    @section = Section.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @section = Section.find(params[:id])

    @section.category = params[:category] || @section.category
    @section.order = params[:order] || @section.order
    @section.content = params[:content] || @section.content
    @section.grant_id = params[:grant_id] || @section.grant_id

    @section.save
    render 'show.json.jb'
  end

  def destroy
    section = Section.find(params[:id])
    section.destroy
    render json: {message: "Section successfully destroyed"}
  end

end
