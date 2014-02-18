class ChangeYearofpassingtype < ActiveRecord::Migration
  def change
  	change_column :alumnis, :year_of_passing, :string
  end
end
