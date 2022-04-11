require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.create(name: "Toy")
    @product_params = {
      :name => 'Monkey',
      :price => 100,
      :quantity => 20
    }
  end
  
  describe 'Validations' do

    it "should save a product when all four mandatory fields are given" do
      puts @category.id
      product_params = @product_params.clone
      product = @category.products.new(product_params)
      expect(product.save).to be true
    end
    
    # it "should not save a product when name is missing" do
    #   puts @category.id
    #   product_params

  end
  
end
