class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.uuid :uuid
      t.string :name
      t.string :identification_code

      t.timestamps
      t.index %w[uuid], unique: true
      t.index %w[email], unique: true
    end
  end
end
