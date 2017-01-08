class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :get_article_tags, :get_archives, :get_settings, :get_blog_host

  def get_article_tags
    @article_tags = Article.tag_counts.order(taggings_count: :desc)
  end

  def get_archives
    @archives = Article.group_by_month(:created_at).count
  end

  def get_settings
    @settings = Setting.first
  end

  def get_blog_host
    @blog_host = request.host
  end
end
