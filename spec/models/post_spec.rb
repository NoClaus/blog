require 'rails_helper'

RSpec.describe Post, type: :model do
  
  def build_and_validate_article(*args)
    post = build(:post, *args)
    post.validate!
    post
  end
  
  let(:user) { create(:user) }
  let!(:post) { create(:post, user: user) }

  describe "validations" do
    it { is_expected.to validate_attached_of(:thumbnail) }
    it { is_expected.to validate_content_type_of(:thumbnail).allowing('image/png', 'image/jpg', 'image/jpeg') }
    it { is_expected.to validate_size_of(:thumbnail).less_than(50.kilobytes) }
  end
end
