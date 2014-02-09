class AddServiceTostudentCategories < ActiveRecord::Migration
  def change
  	add_column :student_categories, :service_retirement, :string
  end
end
