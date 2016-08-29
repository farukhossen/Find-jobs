class CreateJobDescriptions < ActiveRecord::Migration
  def change
    create_table :job_descriptions do |t|
      t.string :title
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
