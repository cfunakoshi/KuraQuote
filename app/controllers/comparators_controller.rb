class ComparatorsController < ApplicationController
  
  def new
  end

  def show
    @user = current_user
    @quote = Quote.find_by_user_id(current_user.id)
    @vehicle = Lookup.all
    @companylist = Companylist.all
    if Companylist.first.active == "0" && Companylist.second.active == "0"
      @general = "active"
      @liability = ""
    else
      @general = ""
      @liability = "active"
    end      
    @presence = 0
    @quotecount = @bicount = @pdcount = @pipcount = @unmotorcount = @undermotorcount = @compcount = @collisioncount = 1
    if @user.coverage == nil
      flash[:danger] = "You Must Complete Basic Information/Vehicles/Preferred Policy First"
      redirect_to current_user
    elsif Vehicle.find_by_user_id(current_user.id) == nil
        flash[:danger] = "Must add a Vehicle"
    else
      if @user.coverage.bodilyinjury.presence && @user.coverage.propertydamage.presence && @user.coverage.piprotection.presence && @user.coverage.comprehensive.presence
      @presence = 1
      @bi = Bodilyinjury.find_by_limit(@user.coverage.bodilyinjury)
      @pd = Propertydamage.find_by_limit(@user.coverage.propertydamage)
      @pip = Piprotection.find_by_limit(@user.coverage.piprotection) 
      @pideductible = Pideductible.find_by_deductible(@user.coverage.pideductible)        
      @unmotor = Unmotorist.find_by_unstacked(@user.coverage.uninsuredunstacked)
      @undermotor = Undermotorist.find_by_unstacked(@user.coverage.underinsuredunstacked)
        @comprehensive = Comprehensive.find_by_deductible(@user.coverage.comprehensive)
        @collision = Collision.find_by_deductible(@user.coverage.collision)
        @biarray = [Horribleinsurancebi.find_by_bodilyinjury_id(@bi.id), Tradewindbi.find_by_bodilyinjury_id(@bi.id) ]
      @pdarray = [Horribleinsurancepd.find_by_propertydamage_id(@pd.id), Tradewindpd.find_by_propertydamage_id(@pd.id)]
        @piparray = [Horribleinsurancepip.find_by_piprotection_id_and_deductible(@pip.id, @pideductible.deductible), Tradewindpip.find_by_piprotection_id_and_deductible(@pip.id, @pideductible.deductible)]  
      @unmotorarray = [Horribleinsuranceunmotor.find_by_unmotorist_id(@unmotor.id), Tradewindunmotor.find_by_unmotorist_id(@unmotor.id)]
        @undermotorarray = [Horribleinsuranceundermotor.find_by_undermotorist_id(@undermotor.id), Tradewindundermotor.find_by_undermotorist_id(@undermotor.id)]
        @comparray = [Horriblecomp.where("deductible = ?", @comprehensive.deductible), Tradewindcomprehensive.where("deductible = ?", @comprehensive.deductible)]
         @collarray = [Horriblecoll.where("deductible =?", @collision.deductible), Tradewindcollision.where("deductible = ?", @collision.deductible)]
    else
      flash[:danger] = "You Must Finish Policy in Profile Page"
    end
    end
end
 
  def update
    @companylist = Companylist.all
    company1 = params[:company1]
    company2 = params[:company2]
      if  company1 == nil
        Companylist.first.update_attributes(active: "0")
        elsif company1[0] == "1"
       Companylist.first.update_attributes(active: "1")
      else
        Companylist.first.update_attributes(active: "0")
      end
       if  company2 == nil
         Companylist.second.update_attributes(active: "0")
         elsif company2[0] == "1"
         Companylist.second.update_attributes(active: "1")
      else
         Companylist.second.update_attributes(active: "0")
      end    
    redirect_to comparator_path
  end
  
end