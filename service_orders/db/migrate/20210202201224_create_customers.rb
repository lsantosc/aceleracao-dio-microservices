class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'plpgsql'
    enable_extension 'uuid-ossp'

    create_table :customers do |t|
      t.uuid :uuid, default: 'uuid_generate_v4()', null: false
      t.string :name
      t.string :email
      t.string :identification_code

      t.timestamps
      t.index %w[uuid], unique: true
      t.index %w[identification_code], unique: true
    end
  end
end
