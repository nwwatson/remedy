module Remedy
  module ApplicationHelper
    def documents_enabled?(&block)
      if Remedy.enable_documents
        content = capture(&block)
        render inline: content
      end
    end

    def faqs_enabled?(&block)
      if Remedy.enable_faqs
        content = capture(&block)
        render inline: content
      end
    end

    def search_enabled?(&block)
      if Remedy.enable_search
        content = capture(&block)
        render inline: content
      end
    end
  end
end
