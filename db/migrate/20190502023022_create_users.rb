class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :avatar_url
      t.string :gender
      t.string :description
      t.date :date_of_birth

      t.timestamps
    end
  end
end
