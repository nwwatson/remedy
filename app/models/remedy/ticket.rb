class Ticket
  include ActiveModel::Model

  attr_accessor :subject, :body, :requester_email, :requester_name

  validates_presence_of :subject, :body, :requester_email, :requester_name
  validates :requester_email, email: true

  def save
    return false unless valid?

    ZendeskAPI::Ticket.create(client, options)
  end

  private

  def client
    Remedy::Client.instance
  end

  def options_hash
    {
      subject: subject,
      comment: {
        value: body
      },
      requester: {
        email: requester_email,
        name: requester_name
      }
    }
  end
end
