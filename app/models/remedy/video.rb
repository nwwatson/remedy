module Remedy
  class Video < ActiveRecord::Base
    validates_presence_of :title, :description, :video_number, :slug
    before_save :generate_slug

    def slug
      slug ||= generate_slug
    end


    def to_param
      slug
    end

    private

    def generate_slug
      self.slug = title.downcase.gsub(" ", "-")
    end
  end
end
