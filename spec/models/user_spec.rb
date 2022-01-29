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

      it "should fail to create a user due to password length" do
        user1 = User.create({first_name: 'first', last_name: 'last', email: 'name@email.com', password: '12', password_confirmation: '12' }).invalid?
      end

    end
  end
end

# It must be created with a password and password_confirmation fields
# These need to match so you should have an example for where they are not the same
# These are required when creating the model so you should also have an example for this
# Emails must be unique (not case sensitive; for example, TEST@TEST.com should not be allowed if test@test.COM is in the database)
# Email, first name, and last name should also be required