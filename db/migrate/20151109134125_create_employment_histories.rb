class CreateEmploymentHistories < ActiveRecord::Migration
  def change
    create_table :employment_histories do |t|
      t.integer :resume_id
      t.string :company
      t.string :company_business
      t.string :company_location
      t.string :department
      t.string :position
      t.string :responsibilities
      t.date :from
      t.date :to

      t.timestamps null: false
    end
  end
end
