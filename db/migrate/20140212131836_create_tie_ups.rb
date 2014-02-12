class CreateTieUps < ActiveRecord::Migration
  def change
    create_table :tie_ups do |t|
      t.string :rbi_or_sbi_proof
      t.references :student_cat_reg_form, index: true

      t.timestamps
    end
  end
end
