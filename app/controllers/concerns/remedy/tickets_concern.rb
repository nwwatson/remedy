module Remedy
  module TicketsConcern
    extend ActiveSupport::Concern

    included do
      helper Remedy::ApplicationHelper
    end

    def new
      @ticket = Remedy::Ticket.new
    end

    def create
      @ticket = Remedy::Ticket.new(model_params)
    end

    private

    def model_params
      params.require(:ticket).permit(
        :subject,
        :body,
        :requester_email,
        :requester_name
      )
    end

  end
end
