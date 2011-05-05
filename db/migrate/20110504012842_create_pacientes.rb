class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes do |t|
      t.string :cpf
      t.string :rg
      t.string :nome
      t.string :cep
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :complemento
      t.string :sexo
      t.string :estado_Civil
      t.datetime :data_nascimento

      t.timestamps
    end
  end

  def self.down
    drop_table :pacientes
  end
end
