require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    before(:each) do
      @studio_owner = build(:user)
      @circus_event = build(:event)
      @circus_event.user = @studio_owner
    end

    it 'returns the person who created event' do
      expect(@circus_event.user).to eq @studio_owner
    end

    it 'returns the event the user created' do
      expect(@studio_owner.events).to be_a(Event::ActiveRecord_Associations_CollectionProxy)
    end
  end

  describe "event attributes" do
    let(:event) { @event_attrs = build(:event)}

    it "event has name" do
      expect(event.name).to eq @event_attrs.name
    end

    it "event has a description" do
      expect(event.description).to eq @event_attrs.description
    end
  end
end
