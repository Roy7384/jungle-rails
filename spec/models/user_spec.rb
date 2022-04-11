require 'rails_helper'

RSpec.describe User, type: :model do

  subject { described_class.new(first_name: "Joe", last_name: "Blow", email: "test@123.com", password: "123456", password_confirmation: "123456") } 

  it "should be valid when all field are provided correctly" do
    expect(subject).to be_valid 
  end
  
  it "should not be valid when password and password_confirmation not matching" do
    subject.password = '654321' 
    expect(subject).to_not be_valid
  end
  
  it "should not be valid when password or password_confirmation is empty" do
    subject.password = nil
    expect(subject).to_not be_valid
    subject.password = "123456"
    expect(subject).to be_valid 
    subject.password_confirmation = "654321"
    expect(subject).to_not be_valid 
  end
  
  it "should not be valid when email is missing" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end
  it "should not be valid when first_name is missing" do
    subject.first_name = nil
    expect(subject).to_not be_valid  
  end
  it "should not be valid when last_name is missing" do
    subject.last_name = nil
    expect(subject).to_not be_valid  
  end

  it "should not be valid when email is not unique" do
    subject.save
    newUser = User.new(first_name: "Joe", last_name: "Blow", email: "Test@123.com", password: "123456", password_confirmation: "123456")
    expect(newUser).to_not be_valid
  end

  it "should not be valid when password is shorter than 6 characters" do
    subject.password = '1234'
    subject.password_confirmation = '1234'
    expect(subject).to_not be_valid 
  end
  
  
end
