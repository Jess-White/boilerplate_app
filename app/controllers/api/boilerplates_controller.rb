class Api::BoilerplatesController < ApplicationController

  before_action :authenticate_user

  def index
    @boilerplates = Boilerplate.all

    @boilerplates = @boilerplates.order(id: :asc)
    
    render 'index.json.jb'
    
  end 

  def create
    @boilerplate = Boilerplate.new(
                         name: params[:name],
                         boilerplate_text: params[:boilerplate_text],
                         user_id: current_user.id,
                         category_id: params[:category_id]
                        )
    if @boilerplate.save
      render "show.json.jb"
    else
      render json: {errors: @boilerplate.errors.messages}, status: :unprocessable_entity
    end
  end

  def show
    @boilerplate = Boilerplate.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @boilerplate = Boilerplate.find(params[:id])

    @boilerplate.name = params[:name] || @boilerplate.name
    @boilerplate.boilerplate_text = params[:boilerplate_text] || @boilerplate.boilerplate_text
    @boilerplate.user_id = params[:user_id] || @boilerplate.current_user.id
    @boilerplate.category_id = params[:category_id] || @boilerplate.category_id

    @boilerplate.save
    render 'show.json.jb'
  end

  def destroy
    boilerplate = Boilerplate.find(params[:id])
    boilerplate.destroy
    render json: {message: "Boilerplate successfully destroyed"}
  end

end
