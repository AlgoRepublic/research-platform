class TradesController < InheritedResources::Base


  def create_trade_via_ajax_request
  	@trade = Trade.new(trade_params)
    if @trade.save
    	flash[:message] = "Trade submitted successfully"
    else
    	flash[:alert] = "Sorry Trade cant be submitted"
    end
    redirect_to profile_users_path
  end

  private

    def trade_params
      params.require(:trade).permit(:avatar, :description, :user_id)
    end
end

