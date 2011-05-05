class CreateTipoSystemUsers < ActiveRecord::Migration
  def self.up
    create_table :tipo_system_users do |t|
      t.string :tipo
      t.string :descricao
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_system_users
  end
end
