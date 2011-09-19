require "bootstrap-rails/version"

module Bootstrap
  module Rails
    if ::Rails.version < "3.1"
      require "bootstrap-rails/railtie"
    else
      require "bootstrap-rails/engine"
    end
  end
end