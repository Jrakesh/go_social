module GoSocial
  module Rails
    class Engine < ::Rails::Engine
      initializer 'go social config' do
        ActionView::Base.send :include, GoSocial::ViewHelper
      end
    end
  end
end
