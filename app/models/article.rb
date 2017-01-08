class Article < ApplicationRecord

  acts_as_taggable

  extend FriendlyId
  friendly_id :title, use: :slugged

  mount_uploader :image, ArticleImageUploader

  def self.reverse_order
    order(created_at: :desc)
  end

  def self.published
    where(published: true)
  end

  def self.articles_archive(archive_date)
    where('created_at >= ? and created_at < ?', archive_date, archive_date + 1.month)
  end

  before_save :parse_content

  def parse_content
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    self.html_content = markdown.render(self.content)
  end
end
