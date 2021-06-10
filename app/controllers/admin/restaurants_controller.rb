class Admin::RestaurantsController < ApplicationController
  before_action :if_not_admin
	before_action :set_restaurant, only: [ :edit, :destroy]

  def index
		# クエリストリングがあればTimeオブジェクトに変換、ない場合は現在の時刻を取得
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    # 取得した時刻が含まれる日の範囲のデータを取得
    @healths = Health.left_joins(:user).select('healths.*,users.name').where(date: @month.all_day).order('date ASC')
	end

  def show
    # クエリストリングがあればTimeオブジェクトに変換、ない場合は現在の時刻を取得
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    # 取得した時刻が含まれる日の範囲のデータを取得
    @actionlogs = Actionlog.where(date: @month.all_day).where(id: @user_id).order('date ASC')  
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

	def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
