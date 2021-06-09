class ActionlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @params = params[:date].to_date
    @form = Form::ActionlogCollection.new
    # # 既存行動データの取得
    # @already_logs = Actionlog.where(date: @params.all_day).where(user_id: @current_user.id).order('date ASC')
    # # 既存行動データ数取得
    # @already_logs_size = @already_logs.size + 1
    # @actionlog = Actionlog.new(date: @params)
  end

  def create
    @form = Form::ActionlogCollection.new(actionlog_collection_params)
    binding.pry
    if @form.save
      redirect_to actionlogs_new_path
    else
      flash[:error_messages] = @form.errors.full_messages
      render :new
    end


    # actionlog = Actionlog.new(actionlog_params)
    # if actionlog.save
    #   flash[:notice] = "「#{actionlog.date}」の行動記録を登録しました"
    #   redirect_to root_path(@params)
    # else
    #   flash[:error_messages] = actionlog.errors.full_messages
    #   redirect_back(fallback_location: actionlog_new_path)
    # end


  end

  def edit
  end

  private

    def actionlog_collection_params
      params
        .require(:form_actionlog_collection)
        .permit(:group_num, :date, :start_time, :end_time, :destination, :transportation, :departure, :arrival, :attendees, :attendees_details, :other, :user_id)
    end
end
