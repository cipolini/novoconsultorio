# encoding: UTF-8
class Paciente < ActiveRecord::Base
  validates_presence_of :nome, :cpf, :rg, :cep, :endereco, :bairro, :cidade, :uf
  validates_length_of :cpf, :maximum => 11, :minimum => 11
  validates_length_of :uf, :maximum => 2, :minimum => 2
  validates_numericality_of :cpf
end
