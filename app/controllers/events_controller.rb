class EventsController < ApplicationController

	def index
		events = Event.all
		render json: events, include: [:contributions]
	end

	def show 
		event = Event.find_by(id: params[:id])
		if event
			render json:event
		else 
			render json: {error: 'Event not found.'}, status: 404
		end 
	end 


end
