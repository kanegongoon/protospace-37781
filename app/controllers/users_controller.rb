class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @prototypes = @user.prototypes
  end

  private

  def user_params
    params.require(:user).permit(:content, :prototype, :user)
  end
end
