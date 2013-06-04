module GoSocial
  module Linkedin
    include GoSocial::Assistant

    SHARE_TYPE = "IN/Share"
    FOLLOW_COMPANY_TYPE = "IN/FollowCompany"
    PROFILE_TYPE = "IN/MemberProfile"
    
    # Linkedin Share Button
    def linkedin_share_button(options = {})
      clazz = GoSocial::Linkedin
      params = clazz.options_to_data(clazz.default_options_share_button.merge(options))
      params.merge!(type: SHARE_TYPE)

      html = "".html_safe      
      html << clazz.script
      html << content_tag(:script, nil, params)
      html
    end

    # Linkedin Follow Company Button
    def linkedin_follow_company_button(options = {})
      clazz = GoSocial::Linkedin
      params = clazz.options_to_data(clazz.default_options_follow_company_button.merge(options))
      params.merge!(type: FOLLOW_COMPANY_TYPE)

      html = "".html_safe      
      html << clazz.script
      html << content_tag(:script, nil, params)
      html
    end

    # Linkedin Member Profile Button
    def linkedin_profile_button(options = {})
      clazz = GoSocial::Linkedin
      params = clazz.options_to_data(clazz.default_options_profile_button.merge(options))
      params.merge!(type: PROFILE_TYPE)

      html = "".html_safe      
      html << clazz.script
      html << content_tag(:script, nil, params)
      html
    end

   
    class << self
      def default_options_share_button
        @default_options_share_button ||= {	  
          counter: "top"         
        }.merge("url" => "http://www.linkedin.com/pub/john-doe/72/a64/a89")
      end

      def default_options_follow_company_button
        @default_options_follow_company_button ||= {	  
          counter: "top"         
        }.merge("id" => "2440759")
      end

      def default_options_profile_button
        @default_options_profile_button ||= {	  
          format: "inline",
          width: "305px"         
        }.merge("id" => "http://www.linkedin.com/pub/cipher-test/72/760/310")
      end
      
    
      
      # Linkedin Script
      def script    
        '<script src="//platform.linkedin.com/in.js" type="text/javascript">
      lang: en_US
    </script>'.html_safe
      end

    end
  end
end
