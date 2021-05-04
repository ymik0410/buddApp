class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end
end
