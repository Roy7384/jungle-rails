require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.create(name: "Toy")
  end
  
  describe 'Validations' do

    it "should save a product when all four mandatory fields are given" do
      puts @category.id
      product_params = {
        :name => 'Monkey',
        :price => 100,
        :quantity => 20
      }
      product = @category.products.new(product_params)
      expect(product.save).to be true
    end
    
  end
  
end
