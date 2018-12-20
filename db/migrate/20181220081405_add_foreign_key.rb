class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :stocks, :sneakers
  end
end
