class DashboardController < ApplicationController
  def index
    @visitors = Visitor.all
  end
end
