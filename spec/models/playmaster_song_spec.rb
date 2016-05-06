require 'rails_helper'

RSpec.describe PlaymasterSong, type: :model do
  it { should belong_to(:song) }
  it { should belong_to(:playmaster) }
end
