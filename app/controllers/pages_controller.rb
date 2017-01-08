class PagesController < ApplicationController
  def about
  end

  def filtered_articles
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 10)
    elsif params[:archive]
      @articles = Article.articles_archive(params[:archive].to_date).reverse_order.paginate(:page => params[:page], :per_page => 10)
    end
  end
end
