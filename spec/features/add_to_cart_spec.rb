require 'rails_helper'

RSpec.feature "Visitor can add product to cart", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
  end

  scenario "cart update count when user add product to cart" do
    # Vist home page
    visit root_path

    # Click on the first product
    click_on "Add"

    # Wait and check if product detail page loads
    expect(page).to have_content 'My Cart (1)'
    save_screenshot
  end

end