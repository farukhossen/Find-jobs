class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.integer :resume_id
      t.string :organization
      t.string :address
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :relation

      t.timestamps null: false
    end
  end
end
