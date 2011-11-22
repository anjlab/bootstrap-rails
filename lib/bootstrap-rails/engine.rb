module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootstrap.initialize' do
        ActiveSupport.on_load(:action_view) do
          include ::Bootstrap::Helpers::TopbarHelper
        end
      end
    end
  end
end