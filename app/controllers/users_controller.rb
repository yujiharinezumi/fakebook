class UsersController < ApplicationController
  before_action :set_user, only:[:show,:edit,:update,:destroy]
  def index
  end

  def new
     @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
     redirect_to user_path(@user.id)
    else
      render :new
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to blogs_path,notice:"ユーザー情報を編集しました！"
    else
      render :edit
    end
  end

  private


  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end

  def set_user
      @user = User.find(params[:id])
  end
end
