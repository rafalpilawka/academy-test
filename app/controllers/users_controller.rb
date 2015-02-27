class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    @users = User.paginate(:page => params[:page], :per_page => 4)
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end
private
def user_params
      params.require(:user).permit(:name  ,:age , :city_id)
    end  
end
