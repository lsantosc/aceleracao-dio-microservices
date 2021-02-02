class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.string :identification_code

      t.timestamps
      t.index %w[email], unique: true
    end
  end
end
