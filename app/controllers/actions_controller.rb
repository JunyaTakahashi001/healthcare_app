class ActionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @params = params[:date].to_time
    @action = Action.new(date: @params)
  end

  def edit
  end
end
