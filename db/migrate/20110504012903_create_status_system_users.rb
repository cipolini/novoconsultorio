class CreateStatusSystemUsers < ActiveRecord::Migration
  def self.up
    create_table :status_system_users do |t|
      t.string :descricao
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :status_system_users
  end
end
