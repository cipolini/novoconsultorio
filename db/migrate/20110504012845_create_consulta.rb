class CreateConsulta < ActiveRecord::Migration
  def self.up
    create_table :consulta do |t|
      t.integer :paciente_id
      t.string :descricao
      t.string :tipo_consulta
      t.string :exames
      t.string :exame_fisico
      t.string :cirurgia
      t.string :diagnostico
      t.string :convenio
      t.string :tipo_plano
      t.datetime :data_consulta
      t.string :status
      t.integer :consulta_id
      t.integer :medico_id
      t.integer :systemuser_id

      t.timestamps
    end
  end

  def self.down
    drop_table :consulta
  end
end
