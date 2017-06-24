class TradesController < InheritedResources::Base

  private

    def trade_params
      params.require(:trade).permit(:avatar, :description, :user_id)
    end
end

