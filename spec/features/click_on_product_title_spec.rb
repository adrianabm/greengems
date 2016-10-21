require 'rails_helper'

feature 'user clicks product', js: true do
  scenario 'click on product title' do

    create product, name: "kaktus"
    #
    # # Point your browser towards the product path
    # visit products_path
    #
    #
    # #click on link title
    # click_link('Log In')
    #
    # # expect to be directed to the product id
    # visit(product_path(1))
    #
    # #expect page to have product title
    # expect(page).to have_content('Spider Plant')

  end
end