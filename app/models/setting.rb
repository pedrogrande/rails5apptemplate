class Setting < ApplicationRecord
  mount_uploader :author_image, ArticleImageUploader
  validates :blog_title, :subtitle, :author_name, :contact_email, presence: true
end
