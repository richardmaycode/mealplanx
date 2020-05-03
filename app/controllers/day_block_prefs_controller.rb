class DayBlockPrefsController < ApplicationController
  before_action :set_user
  before_action :set_day_prefs
  
  def index; end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_day_prefs
      @day_prefs = @user.day_block_prefs.includes(:active_plan_prefs)
    end
    
end
