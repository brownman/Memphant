class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :full_name,        :limit => 100
      t.string :email,            :limit => 100
      t.string :display_name,     :limit => 15
      t.string :password_salt,    :limit => 16
      t.string :password_hash,    :limit => 64
      t.string :gender,           :limit => 20
      t.date :birthdate
      t.string :city,             :limit => 50
      t.string :state,            :limit => 50
      t.string :country,          :limti => 50
      t.string :time_zone,        :limit => 16
      t.boolean :public_profile,                    :default => false
      t.string :activation_key,   :limit => 56
      t.timestamp :activation_expires
      t.boolean :active,                            :default => false
      t.boolean :admin,                             :default => false
      t.boolean :manage_rooms,                      :default => false
      t.boolean :manage_messages,                   :default => false
      t.boolean :manage_user,                       :default => false
      t.string :last_ip,          :limit => 15
      t.timestamp :last_access
      t.boolean :online,                            :default => false
      t.timestamps
    end
    add_index(:users, :display_name)
    add_index(:users, :email)
    add_index(:users, :activation_key)
  end

  def self.down
    drop_table :users
  end
end
