class CreateSbiGrandParents < ActiveRecord::Migration
  def change
    create_table :sbi_grand_parents do |t|
      t.string :membership_number
      t.string :grandfather_name
      t.string :branch
      t.string :service_retirement
      t.references :student_cat_reg_form, index: true

      t.timestamps
    end
  end
end
