class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :blog_title
      t.string :subtitle
      t.text :about_lead
      t.boolean :tags
      t.boolean :archives
      t.string :contact_email
      t.string :google_analytics
      t.string :github
      t.string :twitter
      t.string :linked_in

      t.timestamps
    end
  end
end
