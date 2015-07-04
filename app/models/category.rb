class Category < ActiveRecord::Base
  has_many :jokes
  validates :name, :presence => true

end
