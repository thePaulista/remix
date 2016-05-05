class PlaymasterSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :playmaster
end
