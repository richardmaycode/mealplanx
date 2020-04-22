# frozen_string_literal: true

# defines controller actions for week_block
class WeekBlocksController < ApplicationController
  def index; end

  def show 
    @week_block = WeekBlock.includes(:day_blocks, :plans, :planned_recipes).find(params[:id])
  end

  def new
    @week_block = WeekBlock.new
    # days = %w[Monday]
    days = [["Monday", Time.now + 1.day, [1, 3]],  ["Tuesday", Time.now + 2.day, [3]], ["Wednesday", Time.now + 3.day, [3]], ["Thursday", Time.now + 4.day, [3]], ["Friday", Time.now + 5.day, [3]], ["Saturday", Time.now + 6.day, [3]], ["Sunday", Time.now + 7.day, [3]]]
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
end
