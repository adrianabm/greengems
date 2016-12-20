require 'rails_helper'

describe ProductsController, type: :controller do
  it "should get index" do
    get :index
    expect(response).to be_success
    expect(:products).not_to eq(nil)
  end
end
