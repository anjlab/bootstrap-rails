module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'anjlab-bootstrap-rails-setup', :group => :all do |app|
        frameworks_path = File.join(config.root, 'vendor', 'frameworks')
        # Tune Sass options
        Sass::Script::Number.precision = 15

        # rails 3.2.x
        if config.respond_to? :sass
          config.sass.load_paths << frameworks_path
        end
        # rails 4.0.x
        if config.respond_to? :assets
          config.assets.paths << frameworks_path
        end
      end
    end
  end
end