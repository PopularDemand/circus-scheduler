require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.create(:user) }

  describe "user attributes" do
    it "user has a first name" do
      expect(user.first_name).to eq "First"
    end

    it "user has a last name" do
      expect(user.last_name).to eq "Last"
    end

    it "user has a title" do
      expect(user.title).to eq "Title"
    end

    it "user has a studio" do
      expect(user.studio).to eq "Studio"
    end

    it "user has a city" do
      expect(user.city).to eq "City"
    end

    it "user has a state" do
      expect(user.state).to eq "State"
    end

    it "user has an email" do
      expect(user.email).to eq "user@user.com"
    end

    it "user has a hashed password per Devise" do
      expect(user.encrypted_password).not_to eq ""
    end
  end

end
