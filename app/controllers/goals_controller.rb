class GoalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @goals = Goal.all
  end
end
