class CreateAcademicQualifications < ActiveRecord::Migration
  def change
    create_table :academic_qualifications do |t|
      t.integer :resume_id
      t.string :level_of_education
      t.string :degree
      t.string :major
      t.string :institute
      t.string :result
      t.string :year_of_passing
      t.string :duration
      t.string :achievement

      t.timestamps null: false
    end
  end
end
