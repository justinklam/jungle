require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "User clicks product 1's details" do
    # Act
    visit root_path
    
    #Exercise
    first("article.product").find_link("Details").click
    
    # Verify
    # Checking to see if unique elements have generated specific to product show.html.erb
    expect(page).to have_css 'article.product-detail'
    
    # Debug
    # puts "Current Page----->#{page.html}"
    # save_screenshot
    
  end

end