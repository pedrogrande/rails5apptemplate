class AddHtmlToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :html_content, :text
  end
end
