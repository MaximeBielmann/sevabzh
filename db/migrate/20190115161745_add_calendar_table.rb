class AddCalendarTable < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars
    
    add_column :calendars, :sneaker_id, :integer
    add_column :calendars, :seller_id, :integer
    add_column :calendars, :release_date, :datetime
    add_column :calendars, :release_link, :text
    add_column :calendars, :release_price, :text
    
    add_foreign_key :calendars, :sneakers
    add_foreign_key :calendars, :sellers
  end
end
