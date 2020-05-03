# frozen_string_literal: true

# defines controller actions for week_block
class WeekBlocksController < ApplicationController
  before_action :set_user
  def index
    weeknumber = Time.now.strftime("%V").to_i
    year = Time.now.year
    @week_block = WeekBlock.includes(:day_blocks, :plans).find_by_week_start(Date.commercial(year, weeknumber, 3))
    @day_blocks = @week_block.day_blocks
  end

  def show 
    @week_block = WeekBlock.includes(day_blocks: :plans).find(params[:id])
  end

  def new
    @week_block = WeekBlock.new
    # days = %w[Monday]
    days = []
    @user.day_block_prefs.each_with_index do |dp, i|
      day = [dp.day, Time.now + i.day, [3]]
      days << day
    end
    #days = [["Monday", Time.now + 1.day, [1, 3]],  ["Tuesday", Time.now + 2.day, [3]], ["Wednesday", Time.now + 3.day, [3]], ["Thursday", Time.now + 4.day, [3]], ["Friday", Time.now + 5.day, [3]], ["Saturday", Time.now + 6.day, [3]], ["Sunday", Time.now + 7.day, [3]]]
    days.each do |d|
      @week_block.day_blocks.build(day: d[0], scheduled: d[1], meal_ids: d[2])
    end
  end

  def create
    @week_block = WeekBlock.create(week_block_params)
    if @week_block.save
      BuildMenu.new(User.first, @week_block.day_blocks).execute
      redirect_to [@week_block] 
    else
      render :new
    end
  end

  private

  def week_block_params
    params.require(:week_block).permit(:week_start, :week_end, day_blocks_attributes: [:day, :scheduled, meal_ids: []])
  end

  def set_user
    @user = User.find(1)
  end
end
