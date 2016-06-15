module Remedy
  class Document < ActiveRecord::Base
    validates_presence_of :title, :file
  end
end
