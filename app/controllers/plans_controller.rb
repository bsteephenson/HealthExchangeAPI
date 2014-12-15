class PlansController < ApplicationController

	#Allows browsers on other domans to access this
	before_action :set_headers

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

	def set_headers
		headers['Access-Control-Allow-Origin'] = '*'
		headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
		headers['Access-Control-Request-Method'] = '*'
		headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
	end
end