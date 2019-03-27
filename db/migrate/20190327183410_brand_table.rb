class BrandTable < ActiveRecord::Migration[5.2]
  def change
    create_table :brands
    add_column :brands, :brand_title, :string
    add_column :brands, :brand_description, :text
    add_column :brands, :brand_banner, :text
  end
end