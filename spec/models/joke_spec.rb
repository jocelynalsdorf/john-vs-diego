require 'rails_helper'

describe Category do
  it { should validate_presence_of :name }
  it { should have_many :jokes }
end
