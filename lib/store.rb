class Store < ActiveRecord::Base
  has_many :annoyings
  has_many :brands, :through => :annoyings
end
