require "bootstrap-rails/version"
require "bootstrap-rails/builders/topbar_builder"
require "bootstrap-rails/helpers/topbar_helper"

module Bootstrap
  module Rails
    if ::Rails.version < "3.1"
      require "bootstrap-rails/railtie"
    else
      require "bootstrap-rails/engine"
    end
  end
end