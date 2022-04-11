require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @category = Category.create(name: "Toy")
    @product_params = {
      :name => 'Monkey',
      :price => 100,
      :quantity => 20,
      :category_id => @category.id
    }
  end
  
  describe 'Validations' do

    it "should save a product when all four mandatory fields are given" do
      product = @category.products.new(@product_params)
      expect(product).to be_valid
    end
    
    it "should have error message when saving product without name" do
      @product_params[:name] = nil
      product = Product.new(@product_params)
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to match(["Name can't be blank"])
    end

    it "should have error message when saving product without price" do
      @product_params[:price_cents] = nil
      product = Product.new(@product_params)
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    it "should have error message when saving product without quantity" do
      @product_params[:quantity] = nil
      product = Product.new(@product_params)
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "should have error message when saving product without category given" do
      @product_params[:category_id] = nil
      product = Product.new(@product_params)
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
    
  end
  
end
