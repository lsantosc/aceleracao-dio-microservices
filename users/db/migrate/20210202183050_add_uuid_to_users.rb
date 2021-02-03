class AddUuidToUsers < ActiveRecord::Migration[6.1]
  def up
    enable_extension 'plpgsql'
    enable_extension 'uuid-ossp'

    add_column :users, :uuid, :uuid, null: true

    User.find_each(batch_size: 250) do |user|
      user.update_column(:uuid, SecureRandom.uuid)
    end

    change_column_default :users, :uuid, null: false
    add_index :users, :uuid, unique: true
  end

  def down
    remove_column :users, :uuid, :uuid
  end
end
