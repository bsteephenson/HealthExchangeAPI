class PlansController < ApplicationController

	#Returns a JSON list of plans in a certain state and rating area
	def search
		@state = params[:state]
		@area = "Rating Area #{params[:area]}"
		@results = Plan.where(State: @state, Rating_Area: @area)
		render json: @results.select("id", "Plan_Marketing_Name")
	end

	def details
		@id = params[:id]
		render json: Plan.find(@id)
	end
end