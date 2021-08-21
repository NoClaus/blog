require 'rails_helper'

RSpec.describe Post, type: :model do
  
  let(:user) {build_stubbed(:user) }
  let(:post) { build_stubbed(:post, user: user) }
  
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe "validations" do
    it { is_expected.to validate_attached_of(:thumbnail) }
    it { is_expected.to validate_content_type_of(:thumbnail).allowing('image/png', 'image/jpg', 'image/jpeg') }
    it { is_expected.to validate_size_of(:thumbnail).less_than(150.kilobytes) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to define_enum_for(:state) }
    it { is_expected.to validate_length_of(:description).is_at_least(50) }
  end
end