class Playmaster < ActiveRecord::Base
  has_many :playmaster_songs
  has_many :songs, through: :playmaster_songs

end
