module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'anjlab-bootstrap-rails.setup' do |app|
        config.sass.load_paths << File.join(config.root, 'vendor', 'frameworks')
      end
    end
  end
end