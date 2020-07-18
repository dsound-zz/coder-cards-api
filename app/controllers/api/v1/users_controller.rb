class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :show, :destroy]

  def index
    @users = User.all 
    if @users
      render json: @users, status: :ok 
    else
      render json: {errors: @users.errors.full_messages}, status: :unprocessible_entity
    end
  end
  
  def show
   if @user.id == 1 
      render json: @user
    elsif curr_user.id == @user.id 
        ender json: @user, status: :ok
    elsif 
      @user.errors
    render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
    else 
      render json: {errors: "User not found!"}
   end
  end
  
def create
    @user = User.new(user_params)
    if @user.save 
      render json: {user: UserSerializer.new(@user), token: Rails.application.credentials.jwt}, status: :ok
    else 
      render json: {errors: @user.errors.full_messages}
    end 
  end

    def update
    if curr_user.id == @user.id
      @user.update(user_params)
      if @user.save
      render json: @user, status: :accepted
      else
     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end

    def destroy
    if curr_user.id == @user.id
      @user.delete
      render json: "user deleted", status: :ok
    else
      render json: { errors: "You are not authorized to delete"}
    end
  end

  private 

  
  def find_user
    @user = User.find(params[:id])
  end
  
  def user_params
   params.permit(:username, :email, :password)
  end

end
