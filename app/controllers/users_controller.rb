class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]


  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end


  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  
  private

    def user_params
      params.permit(:payer, :points, :timestamps)
    end
end
