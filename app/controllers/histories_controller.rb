class HistoriesController < ApplicationController

  def index
    @histories = History.order(:start_date).reverse
  end
end
