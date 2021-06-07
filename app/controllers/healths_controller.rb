class HealthsController < ApplicationController
  def index
    # クエリストリングがあればTimeオブジェクトに変換、ない場合は現在の時刻を取得
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    # 取得した時刻が含まれる月の範囲のデータを取得
    @healths = Health.where(date: @month.all_month).where(user_id: @current_user.id).order('date ASC')
  end

  def show
  end

  def new
    @params = params[:date]
    @health = Health.new(date: @params)
  end

  def create
    health = Health.new(health_params)
    if health.save
      flash[:notice] = "「#{health.date}」の健康状態を登録しました"
      redirect_to healths_path
    else
      flash[:error_messages] = health.errors.full_messages
      redirect_back(fallback_location: new_health_path)
    end
    
  end

  def edit
    @health = Health.find(params[:id])
  end

  def update
    health = Health.find(params[:id])
    health.update(health_params)

    redirect_to healths_path
  end

  private

  def health_params
    params.require(:health).permit(:date, :temperature_morning, :temperature_night, :cough, :dyspnea, :nasal, :throat, :headache, :diarrhea, :taste, :smell, :ather, :user_id)
  end
end