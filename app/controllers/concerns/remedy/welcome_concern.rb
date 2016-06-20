module Remedy
  module WelcomeConcern
    extend ActiveSupport::Concern

    included do
      helper Remedy::ApplicationHelper
    end

    def show
      @documents = Remedy::Document.order(title: :desc)
      @videos = Remedy::Video.order(title: :desc)
    end
  end
end
