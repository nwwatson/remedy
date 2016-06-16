class CreateRemedyVideos < ActiveRecord::Migration
  def change
    create_table :remedy_videos do |t|
      t.string :title
      t.text :description
      t.string :slug, index: true, unique: true
      t.string :video_number
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
