class ActionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @params = params[:date].to_time
    @action = Action.new(date: @params)
  end

  def create
    action = Action.new(action_params)
    if action.save
      flash[:notice] = "「#{action.date}」の行動記録を登録しました"
      redirect_to healths_path
    else
      flash[:error_messages] = action.errors.full_messages
      redirect_back(fallback_location: action_new_path)
    end
  end

  def edit
  end

  private

  def action_params
    params.require(:action).permit(:date, :serial_num, :start_time, :end_time, :destination, :transportation, :departure, :arrival, :attendees, :attendees_details, :other, :user_id)
  end
end
