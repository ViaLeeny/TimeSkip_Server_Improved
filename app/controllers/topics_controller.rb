class TopicsController < ApplicationController

    def index
		topics = Topic.all
		render json: topics, include: [:events]
    end
    
end
