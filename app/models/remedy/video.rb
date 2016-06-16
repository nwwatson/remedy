module Remedy
  class Video < ActiveRecord::Base
    validates_presence_of :title, :description, :video_number, :slug

    def slug
      name.downcase.gsub(" ", "-")
    end

    def to_param
      slug
    end
  end
end
