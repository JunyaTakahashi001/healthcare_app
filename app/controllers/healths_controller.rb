class HealthsController < ApplicationController
  def index
    @healths = Health.all 
  end

  def show
  end

  def new
    @health = Health.new
  end

  def create
    Health.create(health_params)
  end

  def edit
  end

  private

  def health_params
    params.require(:health).permit(:date, :temperature_morning, :temperature_night, :cough, :dyspnea, :nasal, :throat, :headache, :diarrhea, :taste, :smell, :ather, :user_id)
  end
end
