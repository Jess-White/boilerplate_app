class Api::UsersController < ApplicationController

  before_action :authenticate_user
  
  def index
    @users = User.all

    @users = @users.order(id: :asc)
    
    render 'index.json.jb' 
  end 

  def create
    @user = User.new(
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        email: params[:email],
                        title: params[:title],
                        organization_id: params[:organization_id],
                        title: params[:title],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation]
                      )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: {errors: @user.errors.messages}, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @user = User.find(params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.title = params[:title] || @user.title
    @user.organization_id = params[:organization_id] || @user.organization_id
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation

    @user.save
    render 'show.json.jb'
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User successfully destroyed"}
  end
end