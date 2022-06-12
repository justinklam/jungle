# Jungle

Jungle is a mini e-commerce application built with Ruby and Rails 4.2.

## Final Product
### Main Page
![Main](https://user-images.githubusercontent.com/85145076/156908212-3b3b9823-63bd-4b3b-a860-26a5286c99ba.png)
### Categories
![Categories](https://user-images.githubusercontent.com/85145076/156908233-65650a63-edae-471b-99c8-6ba71a43ed3d.png)
### Sign-up
![Sign-up](https://user-images.githubusercontent.com/85145076/156908238-c3512138-5e00-4257-8060-6c09fc148b5b.png)
### Responsive Design
![Responsive](https://user-images.githubusercontent.com/85145076/156908242-2921eb84-05d6-4c2b-9a3b-c5c474bbb4de.png)
### Admin-Products
![Admin-Products](https://user-images.githubusercontent.com/85145076/156908244-e7635529-e00a-4fb4-bb44-7e0b9da756ab.png)
### Admin Categories
![Admin-Categories](https://user-images.githubusercontent.com/85145076/156908245-c1908cbd-f7a7-494d-af49-c2e414e0884a.png)

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

* 'sass-rails', '~> 5.0'
* 'uglifier', '>= 1.3.0'
* 'jquery-rails'
* 'turbolinks'
* 'jbuilder', '~> 2.0'
* 'sdoc', '~> 0.4.0', group: :doc
* 'bcrypt', '~> 3.1.7'
* 'puma'
* 'bootstrap-sass', '~> 3.3.6'
* 'font-awesome-rails'
* 'money-rails'
* 'carrierwave'
* 'rmagick'
* 'stripe'
* 'faker'

## Dev Dependencies
* 'rspec-rails', '~> 3.5'
* 'byebug'
* 'quiet_assets'
* 'dotenv-rails'
