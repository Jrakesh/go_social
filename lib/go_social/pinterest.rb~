module GoSocial
  module Pinterest
    include GoSocial::Assistant

    PINIT_BUTTON = "http://pinterest.com/pin/create/button/"
    PINIT_IMAGE = "//assets.pinterest.com/images/pidgets/pin_it_button.png" 
    CLASS = "pin-it-button"
    TITLE = "Pin It"
    
    #Pin it button
    def pinit_button(options = {})
      clazz = GoSocial::Pinterest
      default_options = {url: request.url, media: request.url}
      params = clazz.default_options.merge(clazz.default_options).merge(options)
      params.merge!(:class => CLASS)

      query_string = clazz.options_to_query(self, params)
      option_params = params.except(:url, :media, :description)
      pinit_link = PINIT_BUTTON + query_string

      html = "".html_safe
      html << link_to(pinit_link, option_params) do
        image_tag PINIT_IMAGE, border: ("0" || options[:border]), title: (TITLE || options[:title])
      end
      html << clazz.script
      html
    end

    #Pin-it follow button
    def pinit_follow_button(options = {})
      clazz = GoSocial::Pinterest
      default_options_follow = {href: request.url}
      
      params = clazz.default_options_follow.merge(clazz.default_options_follow).merge(options)          
      option_params = params.except(:href)
      
      html = "".html_safe    
      html << link_to(params[:title], params[:href], option_params)
      html << clazz.script    
      html
    end

    #Pin-it embed user (to display pins of a user)
    def pinit_embeduser_button(options = {})
      clazz = GoSocial::Pinterest
      default_options_embed = {href: request.url}
       
      params = clazz.default_options_embed.merge(clazz.default_options_embed).merge(options)          
      option_params = params.except(:href)
      
      html = "".html_safe    
      html << link_to(params[:title], params[:href], option_params)
      html << clazz.script    
      html
    end
   

    class << self
      def default_options
        @default_options ||= {
          description: "Pin Me!"
        }.merge("data-pin-do" => "buttonPin")
      end

      def default_options_follow
        @default_options_follow ||= {          
          title: "Pinterest"
        }.merge("data-pin-do" => "buttonFollow", :href => "http://pinterest.com/loremipsum007/")
      end

      def default_options_embed
        @default_options_embed ||= {          
          title: "Pinterest"
        }.merge("data-pin-do" => "embedUser", :href => "http://pinterest.com/loremipsum007/")
      end

      def script        
        "<script src=#{pinit_js} type='text/javascript'></script>".html_safe
      end

      def pinit_js
        "https://assets.pinterest.com/js/pinit.js"
      end
    end
  end
end
