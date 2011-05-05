class CreateEstadoCivils < ActiveRecord::Migration
  def self.up
    create_table :estado_civils do |t|
      t.string :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :estado_civils
  end
end
