require "go_social/version"

module GoSocial

  def self.names    
    %w{facebook pinterest twitter}
  end

  def self.config name = nil, &block
    context = name ? "GoSocial::#{name.to_s.camelize}".constantize : self
    block_given? ? yield(context) : context
  end

  # add class method for each social widgets registered
  names.each do |name|
    (class << self; self; end).send :define_method, name do |&block|
      clazz = "GoSocial::#{name.to_s.camelize}".constantize
      block_given? ? clazz.instance_eval(&block) : clazz
    end
  end

end

require "go_social/view_helper"
require "go_social/engine" if defined?(::Rails::Engine)
