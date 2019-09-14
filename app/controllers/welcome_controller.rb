class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @articles = Article.all.order("created_at DESC").limit(2)
    @visitor  = Visitor.new
  end
  def show
  end
end
