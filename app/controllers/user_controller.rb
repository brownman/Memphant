class UserController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "To complete your registration please follow instructions send to #{@user.email}"
      redirect_to(:root)
    else
      render :action => 'new'
    end
  end

  def activate
    user = User.find_by_activation_key(params[:id])
    if user and user.activate
      flash[:notice] = "Congratulations, #{user.display_name} your registration was completed successfully."
    else
      flash[:notice] = "Sorry, but this activation key is not valid."      
    end
    redirect_to(:root)
  end

end
