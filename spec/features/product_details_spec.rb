require 'rails_helper'

RSpec.feature "Visitor navigates to product details page via home page", type: :feature, js: true do

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

  scenario "They see the product details via clicking on the product" do
    # Vist home page
    visit root_path

    # Click on the first product
    click_on "Details »"

    # Wait and check if product detail page loads
    expect(page).to have_css 'article.product-detail'
    save_screenshot
  end

end