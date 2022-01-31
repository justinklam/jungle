require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

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

  scenario "User clicks product 1's Add to Cart" do
    # Act
    visit root_path

    
    #Exercise
    expect(page).to have_content 'My Cart (0)'
    first("article.product").find_button("Add").click

    # Verify
    expect(page).to have_content 'My Cart (1)'
    
    # Debug
    # puts "Current Page----->#{page.html}"
    # save_screenshot

  end

end