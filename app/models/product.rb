class Product < ActiveRecord::Base
  validates_presence_of :price, :description, :mark
end
