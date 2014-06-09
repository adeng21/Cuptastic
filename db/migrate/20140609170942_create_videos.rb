class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :summary
      t.string :duration
      t.string :link, null: false
      t.datetime :published_at
      t.string :source
      t.string :video_url
      t.string :team, null: false

      t.timestamps
    end
  end
end
