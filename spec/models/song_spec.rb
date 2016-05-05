require 'rails_helper'

RSpec.describe Song, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:title) }
  end

  context "belongs to association" do
    it { is_expected.to belong_to(:artist) }
  end
end
