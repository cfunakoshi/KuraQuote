class ComparatorsController < ApplicationController
  
  def new
  end

  def show
    @user = current_user
    @quote = Quote.find_by_user_id(current_user.id)
    @companylist = Companylist.all
    @presence = 0
    @quotecount = @bicount = @pdcount = @pipcount = @unmotorcount = @undermotorcount = 1
    @total = Array.new(10, 0)
    if @user.coverage == nil
      flash[:danger] = "You Must Complete Basic Information/Vehicles/Preferred Policy First"
      redirect_to current_user
    else
      if @user.coverage.bodilyinjury.presence && @user.coverage.propertydamage.presence && @user.coverage.piprotection.presence
      @presence = 1
      @bi = Bodilyinjury.find_by_limit(@user.coverage.bodilyinjury)
      @pd = Propertydamage.find_by_limit(@user.coverage.propertydamage)
      @pip = Piprotection.find_by_limit(@user.coverage.piprotection) 
      @pideductible = Pideductible.find_by_deductible(@user.coverage.pideductible)        
      @unmotor = Unmotorist.find_by_unstacked(@user.coverage.uninsuredunstacked)
      @undermotor = Undermotorist.find_by_unstacked(@user.coverage.underinsuredunstacked)
        @biarray = [Horribleinsurancebi.find_by_bodilyinjury_id(@bi.id), Tradewindbi.find_by_bodilyinjury_id(@bi.id) ]
      @pdarray = [Horribleinsurancepd.find_by_propertydamage_id(@pd.id), Tradewindpd.find_by_propertydamage_id(@pd.id)]
        @piparray = [Horribleinsurancepip.find_by_piprotection_id_and_deductible(@pip.id, @pideductible.deductible), Tradewindpip.find_by_piprotection_id_and_deductible(@pip.id, @pideductible.deductible)]  
      @unmotorarray = [Horribleinsuranceunmotor.find_by_unmotorist_id(@unmotor.id), Tradewindunmotor.find_by_unmotorist_id(@unmotor.id)]
        @undermotorarray = [Horribleinsuranceundermotor.find_by_undermotorist_id(@undermotor.id), Tradewindundermotor.find_by_undermotorist_id(@undermotor.id)]
    else
      flash[:danger] = "You Must Finish Policy in Profile Page"
    end
    end
end
 
  
end