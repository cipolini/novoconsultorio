# encoding: UTF-8
class BuscasController < ApplicationController
  before_filter :authenticate

  def index
  end

  def show
  end

  def search
    if !params[:busca].nil? 
      if params[:busca] != ''
        @resultado = Paciente.find(:all, :conditions => ['Nome like ?', "%#{params[:busca]}%" ] ) 
      end
    end
  end


end
