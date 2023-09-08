class HeroesController < ApplicationController
    before_action :set_hero, only: [:show]
    
    def index
      @heroes = Hero.all
      render json: @heroes
    end
  
    def show
      if @hero
        render json: @hero, include: [:powers]
      else
        render json: { error: 'Hero not found' }, status: :not_found
      end
    end
  
    private
  
    def set_hero
      @hero = Hero.find_by(id: params[:id])
    end
  end
  