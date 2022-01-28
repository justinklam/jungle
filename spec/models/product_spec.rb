require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    context "Insert product" do
      it "should create a valid product" do
        # ! return true/false if exist
        cat1 = Category.create! name: 'book'
        cat1.products.create!({ name: 'coding_book', price: 7, quantity: 3}).valid?
      end

      # This should fail
      # cat1 = Category.create! name: 'book'
      # product1 = cat1.products.create!({ name: nil, price: 7, quantity: 3})
      # puts product1.errors.full_messages
      
      # this it test is outside/independent of the creation to ensure it runs first
      # it { expect(product1.quantity).not_to eql nil }

      # old format
      # it "should reject invalid product" do
        # expect(product1.quantity).not_to eql nil
      # end

    end
  end

end
