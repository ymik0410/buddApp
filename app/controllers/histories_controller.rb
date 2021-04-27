class HistoriesController < ApplicationController

  def index
    @histories = Histories.all
  end
end
