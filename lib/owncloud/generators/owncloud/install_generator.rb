module Owncloud
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "Generates a custom Rails Config initializer file."

      def self.source_root
        @_config_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def copy_initializer
        template "owncloud.rb", "config/initializers/owncloud.rb"
      end
    end
  end
end
