class HealthsController < ApplicationController
  def index
    @healths = Health.all 
  end

  def show
  end

  def new
    @health = Health.new
  end

  def edit
  end
end
