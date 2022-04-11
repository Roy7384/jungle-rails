require 'rails_helper'

RSpec.describe User, type: :model do

  subject { described_class.new(first_name: "Joe", last_name: "Blow", email: "test@123.com", password: "1234", password_confirmation: "1234") } 

  it "should be valid when all field are provided correctly" do
    expect(subject).to be_valid 
  end
  
  it "should not be valid when password and password_confirmation not matching" do
    subject.password = '4321' 
    expect(subject).to_not be_valid
  end
  
  it "should not be valid when password or password_confirmation is empty" do
    subject.password = nil
    expect(subject).to_not be_valid
    subject.password = "1234"
    expect(subject).to be_valid 
    subject.password_confirmation = "4321"
    expect(subject).to_not be_valid 
  end
  
end
