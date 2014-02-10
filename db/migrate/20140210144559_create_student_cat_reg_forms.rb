class CreateStudentCatRegForms < ActiveRecord::Migration
  def change
    create_table :student_cat_reg_forms do |t|
      t.references :student_category, index: true
      t.references :registration_form, index: true

      t.timestamps
    end
  end
end
