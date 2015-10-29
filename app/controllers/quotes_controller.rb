class QuotesController < ApplicationController
  def new
               @bi = Bodilyinjury.all
    @collision = Collision.all
    @comp = Comprehensive.all
    @pip = Piprotection.all
    @pd = Propertydamage.all
    @undermotor = Undermotorist.all
    @unmotor = Unmotorist.all
    @quote = Quote.new
    @user = current_user
  end
 
  def show
  end
  
    def create
      @quote = Quote.new(coverage_params)
      if @quote.save
        flash[:success] = "Quote Added!"
      redirect_to comparator_path
    else
      flash[:error] = "Oops, something went wrong!"
      render 'new'
    end
  end
  
    def edit
    @user = current_user
      @quotecount = 1
  end
  
      def destroy
      Quote.find(params[:id]).destroy
        flash[:success] = "Quote Deleted"
    redirect_to comparator_path
  end
  
       private

  def coverage_params
    params.require(:quote).permit( :user_id, :bodilyinjury, :propertydamage, :uninsuredunstacked, :underinsuredunstacked, :piprotection, :pideductible, :collision, :comprehensive)
    end
  
end
