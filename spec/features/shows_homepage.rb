require 'rails_helper'

feature 'user sees list of products', js: true do
  scenario 'can see home page' do
    # Point your browser towards the product path
    visit products_path

    expect(page).to have_content("Our Plant Catalog")
  end
  end