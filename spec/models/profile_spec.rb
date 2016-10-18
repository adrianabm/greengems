require 'rails_helper'

RSpec.describe Profile, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"
  it "is invalid without a first_name" do
    profile = Profile.new(first_name: "")
    profile.valid?
    expect(profile.errors).to have_key(:first_name)
  end

  it "is invalid without a last_name" do
    profile = Profile.new(last_name: "")
    profile.valid?
    expect(profile.errors).to have_key(:last_name)
  end

end
