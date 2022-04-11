require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.create(name: "Toy")
    @product_params = {
      :name => 'Monkey',
      :price_cents => 100,
      :quantity => 20,
      :category_id => @category.id
    }
  end
  
  describe 'Validations' do

    it "should save a product when all four mandatory fields are given" do
      product_params = @product_params.clone
      product = @category.products.new(product_params)
      expect(product.save).to be true
    end
    
    it "should have error message when saving product without name" do
      product_params = @product_params.clone
      product_params[:name] = nil
      product = Product.create(product_params)
      expect(product.errors.full_messages).to match(["Name can't be blank"])
    end

    it "should have error message when saving product without price" do
      product_params = @product_params.clone
      product_params[:price_cents] = nil
      product = Product.create(product_params)
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    
  end
  
end
