class UsersController < ApplicationController
  def new 
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:notice] = 'New user created!'
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    redirect_to new_user_path
  end

  def update 
    @userup = Event.find(1)
    @userup.event_name = "Some Other Name"
    @userup.event_state = "CA"
    @userup.save
    
end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,  :password_confirmation, :location, :state)
    end
end