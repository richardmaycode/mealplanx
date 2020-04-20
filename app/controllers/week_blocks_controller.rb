# frozen_string_literal: true

# defines controller actions for week_block
class WeekBlocksController < ApplicationController
  def index; end

  def show 
    @week_block = WeekBlock.find(params[:id])
  end

  def new
    @week_block = WeekBlock.new
    # days = %w[Monday]
    days = [["Monday", Time.now + 1.day],  ["Tuesday", Time.now + 2.day], ["Wednesday", Time.now + 3.day], ["Thursday", Time.now + 4.day], ["Friday", Time.now + 5.day], ["Saturday", Time.now + 6.day], ["Sunday", Time.now + 7.day]]
    days.each do |d|
      @week_block.day_blocks.build(day: d[0], scheduled: d[1], meal: 3)
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
    params.require(:week_block).permit(:week_start, :week_end, day_blocks_attributes: [:day, :scheduled, :meal])
  end
end
