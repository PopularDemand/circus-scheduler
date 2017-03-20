require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    before(:each) do
      @studio_owner = FactoryGirl.create(:user)
      @circus_event = FactoryGirl.create(:event)
    end

    it 'returns the person who created event' do
      expect(@circus_event.user).to match_array [@studio_owner]
    end

    it 'returns the event the user created' do
      expect(@studio_owner.event).to match_array [@circus_event]
    end

    describe "event attributes" do
      it "event has name" do
        expect(@circus_event.name).to eq "Event Name"
      end

      it "event has a description" do
        expect(@circus_event.description).to eq "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      end
    end
  end
end
