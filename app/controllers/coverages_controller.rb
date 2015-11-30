class CoveragesController < ApplicationController
  
  def new
    @bi = Bodilyinjury.all
    @collision = Collision.all
    @comp = Comprehensive.all
    @pip = Piprotection.all
    @pideductible = Pideductible.all
    @pd = Propertydamage.all
    @undermotor = Undermotorist.all
    @unmotor = Unmotorist.all
    @coverage = Coverage.new
    @user = current_user
  end
  
  def create
    @coverage = Coverage.new(coverage_params)
    if @coverage.save
      flash[:success] = "Policy Updated!"
      redirect_to current_user
    else
      flash[:error] = "Oops, something went wrong!"
      render 'new'
    end
  end
  
  def edit
    @user = current_user
    if Coverage.find_by_user_id(@user.id) == nil
      flash[:danger] = "Oops, something went wrong!"
      redirect_to current_user
    else
    Coverage.find_by_user_id(@user.id).destroy
    @coverage = Coverage.new
                @bi = Bodilyinjury.all
    @collision = Collision.all
    @comp = Comprehensive.all
    @pip = Piprotection.all
    @pideductible = Pideductible.all
    @pd = Propertydamage.all
    @undermotor = Undermotorist.all
    @unmotor = Unmotorist.all
    end
  end
  
  def update
    @coverage = Coverage.new(coverage_params)
    if @coverage.save
     flash[:success] = "Your Policy has been updated!"
       redirect_to current_user
   else
     render 'edit'
    end
  end
  
 private

  def coverage_params
    params.require(:coverage).permit( :user_id, :bodilyinjury, :propertydamage, :uninsuredunstacked, :underinsuredunstacked, :piprotection, :pideductible, :collision, :comprehensive)
    end
  
end