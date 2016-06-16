require 'rails/generators'

module Remedy
  module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path('../templates', __FILE__)

      def copy_config
        copy_file "remedy.rb", "config/initializers/remedy.rb"
      end
    end
  end
end
