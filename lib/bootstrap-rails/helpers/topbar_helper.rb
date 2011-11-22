module Bootstrap
  module Helpers
    module TopbarHelper
      def topbar(options = {},&proc)
        ::Bootstrap::Builders::TopbarBuilder.new(self,options,&proc)
      end
    end
  end
end