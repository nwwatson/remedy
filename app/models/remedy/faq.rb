module Remedy
  class Faq < ActiveRecord::Base
    validates_presence_of :title, :body, :slug

    def slug
      name.downcase.gsub(" ", "-")
    end

    def to_param
      slug
    end
  end
end
