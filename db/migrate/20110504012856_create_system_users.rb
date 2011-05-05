class CreateSystemUsers < ActiveRecord::Migration
  def self.up
    create_table :system_users do |t|
      t.string :login
      t.string :password
      t.string :email
      t.string :status
      t.string :tipo

      t.timestamps
    end
  end

  def self.down
    drop_table :system_users
  end
end
