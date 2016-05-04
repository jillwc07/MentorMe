class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:type,
                                 :phase,
                                 :email,
                                 :password,
                                 :phone,
                                 :first_name,
                                 :last_name)
  end
end
