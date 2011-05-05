# encoding: UTF-8
class Foto < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
