json.extract! article, :id, :title, :lead, :content, :published, :slug, :created_at, :updated_at
json.url article_url(article, format: :json)