require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "validations" do
    it "is invalid without a product_name" do
      product = Product.new(name:"")
      product.valid?
      expect(product.errors).to have_key(:name)
    end

    it "is invalid without a description" do
      product = Product.new(description:"")
      product.valid?
      expect(product.errors).to have_key(:description)
    end

    it "is invalid without a price" do
      product = Product.new()
      product.valid?
      expect(product.errors).to have_key(:price)
    end

    it "is valid without Photo" do
    product = Product.new( )
    product.valid?
    expect(product.errors).not_to have_key(:photos)
    end
  end

end
