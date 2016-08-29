class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.string :title
      t.integer :resume_id
      t.timestamps null: false
    end
  end
end
