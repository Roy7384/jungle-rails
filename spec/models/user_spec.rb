require 'rails_helper'

RSpec.describe User, type: :model do

  subject { described_class.new } 

  it "should let me see what is going on" do
    puts subject.inspect 
  end
  
end
