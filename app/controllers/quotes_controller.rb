class QuotesController < ApplicationController
  layout false, only: [:print]
  
  def new
    @companylist = Companylist.all
    @bi = Bodilyinjury.all
    @collision = Collision.all
    @comp = Comprehensive.all
    @pip = Piprotection.all
    @pideductible = Pideductible.all
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
        if @quote.companylist_id == nil
          Quote.find(@quote.id).destroy
          flash[:warning] = "Must Choose a Company for Your Quote"
          redirect_to comparator_path
        else
          flash[:success] = "Quote Added!"
          redirect_to comparator_path
        end
    else
        flash[:error] = "Oops, something went wrong!"
      render 'new'
    end
  end
  
    def edit
    @user = current_user
      @quotecount = 1
      @companylist = Companylist.all
  end
  
      def destroy
      Quote.find(params[:id]).destroy
        flash[:success] = "Quote Deleted"
    redirect_to comparator_path
  end
  
  def print
    if Vehicle.find_by_user_id(current_user.id) == nil
      flash[:danger] = "Must add a Vehicle"
      redirect_to editquote_path
    else
    @user = current_user
    @quote = Quote.find(params[:id])
          @vehicle = Lookup.all
      @companylist = Companylist.all
      if @quote.bodilyinjury.presence && @quote.propertydamage.presence && @quote.piprotection.presence && @quote.uninsuredunstacked && @quote.underinsuredunstacked
      @bi = Bodilyinjury.find_by_limit(@quote.bodilyinjury)
      @pd = Propertydamage.find_by_limit(@quote.propertydamage)
      @pip = Piprotection.find_by_limit(@quote.piprotection)
        @pideductible = Pideductible.find_by_deductible(@quote.pideductible)
      @unmotor = Unmotorist.find_by_unstacked(@quote.uninsuredunstacked)
      @undermotor = Undermotorist.find_by_unstacked(@quote.underinsuredunstacked)
        @comprehensive = Comprehensive.find_by_deductible(@quote.comprehensive)
        @collision = Collision.find_by_deductible(@quote.collision)
      @biarray = [ Horribleinsurancebi.find_by_bodilyinjury_id(@bi.id), Tradewindbi.find_by_bodilyinjury_id(@bi.id) ]
      @pdarray = [Horribleinsurancepd.find_by_propertydamage_id(@pd.id), Tradewindpd.find_by_propertydamage_id(@pd.id)]
      @piparray = [Horribleinsurancepip.find_by_piprotection_id(@pip.id), Tradewindpip.find_by_piprotection_id(@pip.id)]  
      @unmotorarray = [Horribleinsuranceunmotor.find_by_unmotorist_id(@unmotor.id), Tradewindunmotor.find_by_unmotorist_id(@unmotor.id)]
      @undermotorarray = [Horribleinsuranceundermotor.find_by_undermotorist_id(@undermotor.id), Tradewindundermotor.find_by_undermotorist_id(@undermotor.id)]
        @comparray = [Horriblecomp.where("deductible = ?", @quote.comprehensive), Tradewindcomprehensive.where("deductible = ?", @quote.comprehensive)]
      @collarray = [Horriblecoll.where("deductible =?", @quote.collision), Tradewindcollision.where("deductible = ?", @quote.collision)]
      else
        flash[:danger] = "Must have a complete Quote in order to continue"
        redirect_to editquote_path
    end
    end
  end
  
       private

  def coverage_params
    params.require(:quote).permit( :companylist_id, :user_id, :bodilyinjury, :propertydamage, :uninsuredunstacked, :underinsuredunstacked, :piprotection, :pideductible, :collision, :comprehensive)
    end
  
end
