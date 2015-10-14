class BasicinfosController < ApplicationController
  
  def new
    @basicinfo = Basicinfo.new
    @user = current_user
  end
  
    def create
      @basicinfo = Basicinfo.new(basicinfo_params)
    if @basicinfo.save
      flash[:success] = "Basic information Updated!"
      redirect_to current_user
    else
      flash[:error] = "Oops, something went wrong!"
      render 'new'
    end
  end
  
      def edit
        @basicinfo = Basicinfo.find_by_user_id params[:id]
  end
  
    def update
      @basicinfo = Basicinfo.find_by_user_id current_user.id
      if @basicinfo.update_attributes(basicinfo_params)
      flash[:success] = "Your profile has been updated!"
      redirect_to home_path
    else
      render 'edit'
    end
  end
  
     private

    def basicinfo_params
      params.require(:basicinfo).permit(:user_id, :first_name, :last_name, :suffix, :home_phone, :work_phone, :mailing_address, :state, :zipcode)
    end
  
end
  