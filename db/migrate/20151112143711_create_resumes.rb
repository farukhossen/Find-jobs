class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.string :name
      t.string :fathers_name
      t.string :mothers_name
      t.string :gender
      t.string :date_of_birth
      t.string :marital_status
      t.string :nationality
      t.string :national_id_card
      t.string :religion
      t.string :present_address
      t.string :permanent_address
      t.string :current_location
      t.string :home_phone
      t.string :mobile
      t.string :email
      t.string :alternate
      t.timestamps null: false
    end
  end
end
