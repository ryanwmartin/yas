class DashboardController < ApplicationController
  def index
    @visitors = Visitor.all
    @donors   = Donor.all
  end
end
