# frozen_string_literal: true

# defines controller actions for week_block
class WeekBlocksController < ApplicationController
  def index; end

  def new
    @week_block = WeekBlock.new
    days = %w[Monday]
    #days = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
    days.each do |d|
      @week_block.day_blocks.build(day: d)
    end
  end

  def create
    @week_block = WeekBlock.create(week_block_params)
    if @week_block.save
      redirect_to [:week_blocks] 
    else
      render :new
    end
  end

  private

  def week_block_params
    params.require(:week_block).permit(:week_start, :week_end, day_blocks_attributes: [:day, :scheduled])
  end
end
