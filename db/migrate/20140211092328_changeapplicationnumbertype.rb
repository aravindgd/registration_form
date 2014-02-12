class Changeapplicationnumbertype < ActiveRecord::Migration
  def change
  	change_column :registration_forms, :application_number, :string
  end
end
