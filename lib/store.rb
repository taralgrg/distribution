class Store < ActiveRecord::Base
  has_many :annoyings
  has_many :brands, :through => :annoyings
  validates(:name, :presence => true)

before_save(:capitalize_name)

private
  define_method(:capitalize_name) do
    self.name=(name().capitalize())
  end
end
