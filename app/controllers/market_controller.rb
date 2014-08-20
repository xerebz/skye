class MarketController < ApplicationController
	def market
    respond_to do |format|
      format.html { render }
      format.json { render }
    end
  end
end
