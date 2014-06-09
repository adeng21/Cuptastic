class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :link, presence: true
  validates :team, presence: true
end
