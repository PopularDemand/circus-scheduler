require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { 
              @user_attrs = build(:user)}


  describe "user attributes" do
    it "user has a first name" do
      expect(user.first_name).to eq @user_attrs.first_name
    end

    it "user has a last name" do
      expect(user.last_name).to eq @user_attrs.last_name
    end

    it "user has a title" do
      expect(user.title).to eq @user_attrs.title
    end

    it "user has a studio" do
      expect(user.studio).to eq @user_attrs.studio
    end

    it "user has a city" do
      expect(user.city).to eq @user_attrs.city
    end

    it "user has a state" do
      expect(user.state).to eq @user_attrs.state
    end

    it "user has an email" do
      expect(user.email).to eq @user_attrs.email
    end

    it "user has a hashed password per Devise" do
      expect(user.encrypted_password).not_to eq ""
    end
  end

end
