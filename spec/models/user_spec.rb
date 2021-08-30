require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :password }
  end
  
  describe 'associations' do
    it { is_expected.to have_one(:profile).dependent(:destroy) }
    it { is_expected.to have_many(:posts) }
    it { should have_many(:authorizations).dependent(:destroy) }
  end
  
  describe "profiles" do
    it "automatically creates a profile for new users", :aggregate_failures do
      user = create(:user)
      expect(user.profile).to be_present
    end
  end
  
end


