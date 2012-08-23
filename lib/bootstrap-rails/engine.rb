module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'anjlab-bootstrap-rails-setup', :group => :all do |app|
        if config.respond_to? :sass
          config.sass.load_paths << File.join(config.root, 'vendor', 'frameworks')
        end
      end
    end
  end
end