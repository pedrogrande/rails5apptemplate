class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :lead
      t.text :content
      t.boolean :published, default: true
      t.string :slug

      t.timestamps
    end
  end
end
