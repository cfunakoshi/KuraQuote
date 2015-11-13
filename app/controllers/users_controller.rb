class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [ :destroy]
  
  def new
    @user = User.new
  end

  def show
      @user = User.find(params[:id])
    @basicinfo = Basicinfo.find_by_user_id (params[:id])
    @vehicle = Vehicle.find_by_user_id (params[:id])
    @vehiclecount = 1
    @coverage = Coverage.find_by_user_id (current_user.id)
  end
  
   def create
    @user = User.new(user_params)
     @agentuser = User.new(agentuser_params)
    if @user.save
      #UserMailer.registration_confirmation(@user).deliver
      log_in @user
      flash[:success] = "Welcome to KuraQuote!"
      redirect_to home_path
    else
      flash[:error] = "Oops, something went wrong!"
      render 'new'
    end
    # if @agentuser.save
       #flash[:success] = "User Added!"
   # else
 #     flash[:error] = "Oops, something went wrong!"
 #    end
  end
  
    def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Your profile has been updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def index
    @users = User.paginate(page: params[:page])
   # @agentuser = User.new
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User Deleted"
    redirect_to index_path
  end
  
  #def confirm_email
   # user = User.find_by_confirm_token(params[:id])
   # if user
   #   user.email_activate
   #   flash[:success] = "Welcome to KuraQuote! Your email has been confirmed.
   #   Please log in to continue."
   #   redirect_to login_url
   # else
   #   flash[:error] = "Sorry. User does not exist"
   #   redirect_to root_url
   # end
#end
  
   private

    def user_params
      params.require(:user).permit(:name, :email, :password,
        :password_confirmation, :agent_id)
    end
  
  #def agentuser_params
 #   params.require(:user).permit(:name, :email,password: "orange33", password_confirmation: "orange33" :agent_id)
 # end
  
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
  
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
