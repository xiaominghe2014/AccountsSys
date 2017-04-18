class UsersController < ApplicationController
	def new
	end

  def create
    # render plain:params[:user].inspect
    # @user = User.new(params[:user])
    # @user = User.new(params.require(:user).permit(:name,:pwd))
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  private
    def user_params
        params.require(:user).permit(:name, :pwd)
    end
end
