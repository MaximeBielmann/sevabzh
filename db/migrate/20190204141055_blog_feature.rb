class BlogFeature < ActiveRecord::Migration[5.2]
  def change
    create_table :articles
    add_column :articles, :admin_id, :integer
    add_column :articles, :article_title, :string
    add_column :articles, :article_text, :text
    add_column :articles, :article_datetime, :datetime
    add_column :articles, :article_img, :text
    
  end
end
