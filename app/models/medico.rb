class Medico < ActiveRecord::Base

  validates_presence_of :login
  validates_presence_of :nome
  validates_presence_of :CRM

end
