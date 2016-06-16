class Remedy::Client
  def self.instance
    @instance ||= ZendeskAPI::Client.new do |config|
      config.url = Remedy.zendesk_api
      config.username = Remedy.zendesk_user
      config.token = Remedy.zendesk_token

      config.retry = true

      config.logger = Rails.logger
    end
  end
end
