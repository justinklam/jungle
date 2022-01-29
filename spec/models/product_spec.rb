require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    context "Insert product" do
      it "should create a valid product" do
        cat1 = Category.create! name: 'book'
        cat1.products.create!({ name: 'coding_book', price: 7, quantity: 3}).valid?
      end
    end
    
    context "Insert product" do
      it "should not create a product" do
        # .create! assertion is saying that it should create a valid account. so it must be removed
        cat1 = Category.create name: 'book'
        cat1.products.create({ name: nil, price: 7, quantity: 3}).invalid?
      end
    end
 
  end
end