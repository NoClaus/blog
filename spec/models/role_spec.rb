require 'rails_helper'

RSpec.describe Role, type: :model do
  it { is_expected.to belong_to(:resource).optional }
  it { is_expected.to validate_inclusion_of(:resource_type).in_array(Rolify.resource_types) }
  it { is_expected.to validate_inclusion_of(:name).in_array(described_class::ROLES) }

  describe "::ROLES" do
    it "contains the correct values" do
      expected_roles = %w[
        admin
      ]
      expect(described_class::ROLES).to eq(expected_roles)
    end
  end
end
