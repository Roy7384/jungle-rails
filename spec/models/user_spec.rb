require 'rails_helper'

RSpec.describe User, type: :model do

  subject { described_class.new(first_name: "Joe", last_name: "Blow", email: "test@123.com", password: "1234", password_confirmation: "1234") } 

  it "should be valid when all field are provided correctly" do
    expect(subject).to be_valid 
  end
  
end
