class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :link, presence: true
  validates :team, presence: true

  def self.make_api_call
    world_cup_videos = []

    client = YouTubeIt::Client.new(:dev_key=>YOUTUBE_CLIENT_ID)
    video = client.videos_by(:query => "2014 world cup", :categories => [:sports], :tags => ['soccer', 'football'])

    video.videos.each do |vid|
      if vid.title != nil
        title = vid.title
      else
        title = ""
      end

      if vid.description != nil
        summary = vid.description
      else
        summary = ""
      end

      if vid.duration != nil
        duration = vid.duration
      else
        duration = ""
      end

      if vid.player_url !=nil
        link = vid.player_url
      else
        link = ""
      end

      if vid.published_at !=nil
        published_at = vid.published_at
      else
        published_at = ""
      end

      world_cup_videos << Video.new(title: title, summary: summary, duration: duration, link: link, published_at: published_at, team: "USA")
    end
    return world_cup_videos
  end
end
