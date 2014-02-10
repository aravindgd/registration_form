class CreateSbiOfficers < ActiveRecord::Migration
  def change
    create_table :sbi_officers do |t|
      t.string :membership_number
      t.string :branch
      t.references :student_cat_reg_form, index: true

      t.timestamps
    end
  end
end
