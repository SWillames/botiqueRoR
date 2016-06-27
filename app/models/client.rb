class Client < ActiveRecord::Base
  validates_presence_of :name, :cpf, :location, :salary
  validates_uniqueness_of :cpf
  validates_format_of :cpf, with: /\A.[0-9]+\z/
  validates_length_of :cpf, is: 11
end
