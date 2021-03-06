require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    context "Create User" do

      it "should create a valid user" do
        user1 = User.create!({first_name: 'first', last_name: 'last', email: 'name@email.com', password: '123', password_confirmation: '123' }).valid?
      end

      it "should create a user that fails" do
        user1 = User.create({first_name: 'first', last_name: 'last', email: 'name@email.com', password: '123', password_confirmation: '1234' }).invalid?
      end
    end

    context "Check Password Length" do
      it "should fail to create a user due to password length" do
        user1 = User.create({first_name: 'first', last_name: 'last', email: 'name@email.com', password: '12', password_confirmation: '12' }).invalid?
      end
    end
    
  end
end