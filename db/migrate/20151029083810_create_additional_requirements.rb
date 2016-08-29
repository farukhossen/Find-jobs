class CreateAdditionalRequirements < ActiveRecord::Migration
  def change
    create_table :additional_requirements do |t|
      t.string :title
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
