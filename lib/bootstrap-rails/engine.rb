module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'anjlab-bootstrap-rails-setup', :group => :all do |app|
        # Tune Sass options
        ::Sass::Script::Number.precision = 15
      end
    end
  end
end