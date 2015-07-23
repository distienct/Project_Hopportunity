class ConsumptionsController < ApplicationController

	def index
    @checkins = Checkin.all
	end
end
