class Brand < ActiveRecord::Base
  has_many :annoyings
  has_many :stores, :through => :annoyings
end
