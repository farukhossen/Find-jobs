class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :subcategory_id
      t.string :post
      t.string :company
      t.string :no_of_vacancies
      t.string :job_nature
      t.text :education_requirements
      t.string :job_location
      t.string :salary_range

      t.timestamps null: false
    end
  end
end
