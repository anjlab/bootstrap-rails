module Bootstrap
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'bootstrap.initialize' do
        ActiveSupport.on_load(:action_view) do
          include ::Bootstrap::Helpers::TopbarHelper
        end
      end
    end
  end
end