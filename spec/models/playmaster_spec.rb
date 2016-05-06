require 'rails_helper'

RSpec.describe Playmaster, type: :model do
  it { should have_many(:playmaster_songs) }
  it { should have_many(:songs).through(:playmaster_songs) }
end
