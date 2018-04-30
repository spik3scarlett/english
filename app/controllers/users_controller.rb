class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
   @user = User.find(params[:id])

  end

 def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Rejestracja zakończona sukcesem!"
      redirect_to @user # to jest to samo co > redirect_to user_url(@user) < This is because Rails automatically infers from redirect_to @user that we want to redirect to user_url(@user).
    else
      render 'new'
    end
  end

  private

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end


end
