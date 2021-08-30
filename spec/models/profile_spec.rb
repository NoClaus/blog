require 'rails_helper'

RSpec.describe Profile, type: :model do
  let(:user) { create(:user, :admin) }
  let(:profile) { user.profile }
  
  describe 'validations' do
    it { is_expected.to validate_attached_of(:avatar) }
    it { is_expected.to validate_content_type_of(:avatar).allowing('image/png', 'image/jpg', 'image/jpeg') }
    it { is_expected.to validate_size_of(:avatar).less_than(150.kilobytes) }
  end
end
