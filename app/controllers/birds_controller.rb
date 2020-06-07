class BirdsController < ApplicationController
    def index
        birds = Bird.all
        options = {
          include: [:name, :species]
        }
        render json: BirdSerializer.new(birds)
      end
      
      
      def show
        sighting = Bird.find_by(id: params[:id])
        options = {
          include: [:name, :species]
        }
        render json: BirdSerializer.new(bird)
      end
    end
    
