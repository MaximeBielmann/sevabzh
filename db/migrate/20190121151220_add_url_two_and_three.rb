class AddUrlTwoAndThree < ActiveRecord::Migration[5.2]
  def change
    add_column :sneakers, :img_url2, :text
    add_column :sneakers, :img_url3, :text
  end
end
