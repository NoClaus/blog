require 'rails_helper'

RSpec.describe PostPolicy, type: :policy do
  let(:user) { create(:user, :admin) }
  let(:post) { build_stubbed(:post) }

  subject { described_class.new(user, post) }

  
  context "when user is admin" do
   it { is_expected.to permit_actions(%i[create edit update destroy]) }
  end
  
end