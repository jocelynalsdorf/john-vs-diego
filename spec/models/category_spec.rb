require 'rails_helper'

describe Joke do
  it { should validate_presence_of :question }
  it { should validate_presence_of :punchline }
  it { should belong_to :category }
end
