module GoSocial  
  [GoSocial.names << :assistant].flatten.each do |name|
    #autoload name.to_s.camelize.to_sym, "go_social/view_helpers/#{name}"
    autoload name.to_s.camelize.to_sym, "go_social/#{name}"
  end

  module ViewHelper
    # Include all widgets into ViewHelper to be made available
    # to be included into a View as one module (see engine)
    GoSocial.names.each do |name|
      self.send :include, "GoSocial::#{name.to_s.camelize}".constantize
    end
  end
end
