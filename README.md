# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Features, bug fixes and tests are added to the existing code-base. 

## Features Added
1. Sold out Badge by checking product quantity in view
!["home-page"](https://github.com/Roy7384/jungle-rails/blob/master/docs/home%20page.png?raw=true) 

2. Admin can create new categories and products achieved by adding necessary restful routes.

!["admin"](https://github.com/Roy7384/jungle-rails/blob/master/docs/admin.gif?raw=true) 

3. User Authentication: visitor can sign up with unique email, name and password longer than 6 characters. User can logout from any page. Password are stored and authenticated with bcrypt.

!["user"](https://github.com/Roy7384/jungle-rails/blob/master/docs/user.gif?raw=true) 

4. Added order details page. Corresponding user name and email are associted with stripe charge.

!["orders"](https://github.com/Roy7384/jungle-rails/blob/master/docs/orders.gif?raw=true) 

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
