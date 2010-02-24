begin
  require 'spork/app_framework/rails'

  module Spork::AppFramework::Rails::NinjaPatcher
    # views are preloaded <-> spork must be restarted for view changes
    def delay_eager_view_loading
      puts "removed because i am too slow..."
    end

    # do not preload application files <-> fast test start
    # alternativley set "config.cache_classes = false" in config/environments/test.rb
    def delay_app_preload
      ::Rails::Initializer.send(:define_method, :load_application_classes) do
      end
    end
  end
rescue
end
