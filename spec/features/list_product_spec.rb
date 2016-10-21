require 'rails_helper'

describe "Current user viewing the list of products" do
  it "shows all his products"
end

describe "Admin user viewing the product" do
  before { login_as user }

  let!(:user) { create :user, email: "current@user.com", role: "admin" }
  let!(:product1) { create :product }


  it "shows the description and edit + delete button" do
    visit product_path(product1)

    expect(page).to have_text(product1.description)
    expect(page).to have_selector(:link_or_button, 'Back')
    expect(page).to have_selector(:link_or_button, 'Edit')
    expect(page).to have_selector(:link_or_button, 'Delete')
  end
end

describe "guest user viewing the product" do
  before { login_as user }

  let!(:user) { create :user, email: "anotheruser@user.com", role: "guest" }
  let!(:product2) { create :product, description: "lala" }

  it "shows the description and back button" do
    visit product_path(product2)

  expect(page).to have_text("lala")
  expect(page).to have_selector(:link_or_button, 'Back')
  end

  it "does not show edit + delete button"do
expect(page).not_to have_selector(:link_or_button, 'Edit')
  end
end

