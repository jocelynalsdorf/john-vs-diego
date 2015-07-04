class Joke < ActiveRecord::Base
  belongs_to :category
  validates :question, :presence => true
  validates :punchline, :presence => true

end
