class HealthsController < ApplicationController
  def index
    # クエリストリングがあればTimeオブジェクトに変換、ない場合は現在の時刻を取得
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    # 取得した時刻が含まれる月の範囲のデータを取得
    @healths = Health.where(date: @month.all_month)
  end

  def show
  end

  def new
    @health = Health.new
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
  end

  private

  def health_params
    params.require(:health).permit(:date, :temperature_morning, :temperature_night, :cough, :dyspnea, :nasal, :throat, :headache, :diarrhea, :taste, :smell, :ather, :user_id)
  end
end
