class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @articles = Article.published.reverse_order.paginate(:page => params[:page], :per_page => 10)
  end
end
