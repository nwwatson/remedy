module Remedy
  class Document < ActiveRecord::Base

    mount_uploader :file, Remedy::FileUploader

    validates_presence_of :title, :file
  end
end
