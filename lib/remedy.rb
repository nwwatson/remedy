require 'rails'

module Remedy
  mattr_accessor :enable_documents
  @@enable_documents = true

  mattr_accessor :enable_faqs
  @@enable_faqs = true

  mattr_accessor :enable_search
  @@enable_search = true

  mattr_accessor :enable_zendesk
  @@enable_zendesk = true

  mattr_accessor :zendesk_url
  @@zendesk_url = ""

  mattr_accessor :zendesk_user
  @@zendesk_user = ""

  mattr_accessor :zendesk_token
  @@zendesk_token = ""

  def self.setup
    yield self
  end

end

require "remedy/version"
require "remedy/client"
require "remedy/engine"
