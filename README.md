# GreenGems | Rails online shop

Welcome to the Green Gems webshop! This Ruby on Rails application was built in the second and third week of the [Codaisseur](https://www.codaisseur.com/) traineeship program by a team of four students.

![greengems-home-screenshot](https://cloud.githubusercontent.com/assets/20054414/21365737/ed43f498-c6f6-11e6-93b5-9106e71f3669.png)

## Features
By the end of the two weeks we spent building this webshop, we developed the following features: 

1. Registration and Sign In Process using the Devise gem
2. Role Based Authorization using the CanCanCan gem - admins are able to create and delete products
3. User Profile Page
4. Catalog Display with all the available products
5. Single Page Product
6. Shopping cart using sessions; AJAX calls to update the cart when a product is added
7. Sorting filters and search bar
8. Checkout and payment process
9. Unit Tests

## Getting Started

1. Make sure [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [Rails](http://guides.rubyonrails.org/getting_started.html#installing-rails) are installed in your system

2. Clone the repository and enter the project directory

3. Install all dependencies
	```bash
	bundle install
	```

4. Create database and migrate schema; seed the database
	```bash
	rake db:create
	rake db:migrate
	rake db:seed
	```
	
5. Run the application - it should be available on http://localhost:3000
	```bash
	rails s
	```

## Run the Tests

We are using RSpec for the tests. To run it, just type the following in your command prompt:

```bash
 rspec
```

Happy Gardening!  
Green Gems 2016

Collaborators: @adrianabm, @annedien, @Sebastiaanpoppen, @tanjahennis 
