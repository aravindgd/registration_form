class AddcolumnToAlumi < ActiveRecord::Migration
  def change
  	add_column :alumnis, :alumni_category, :string
  end
end
