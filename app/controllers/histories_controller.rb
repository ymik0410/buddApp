class HistoriesController < ApplicationController

  def index
    @histories = Histories.all.order("created_at DESC")
  end
end
