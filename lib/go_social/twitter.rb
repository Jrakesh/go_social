module GoSocial
  module Twitter
    include GoSocial::Assistant

    TWITTER_SHARE_URL = "http://twitter.com/share"
    TWEET_CLASS = "twitter-share-button"
    TWITTER_FOLLOW_CLASS = "twitter-follow-button"
    TWITTER_TIMELINE = "twitter-timeline"
    
    #Tweet button
    def tweet_button(options = {})
      clazz = GoSocial::Twitter
      params = clazz.options_to_data(clazz.default_options.merge(options))
      params.merge!(class: TWEET_CLASS)

      html = "".html_safe
      html << clazz.script
      html << link_to("Tweet", TWITTER_SHARE_URL, params)
      html
    end
    
    #Twitter follow button
    def twitter_follow_button(options = {})
      clazz = GoSocial::Twitter
      params = clazz.options_to_data(clazz.default_options_follow.merge(options))
      params.merge!(class: TWITTER_FOLLOW_CLASS)

      html = "".html_safe
      html << clazz.script
      html << link_to(params[:title], clazz.default_options_follow[:href], params)
      html
    end

    #Twitter timeline
    def twitter_timeline(options = {})
      clazz = GoSocial::Twitter
      params = clazz.options_to_data(clazz.default_options_timeline.merge(options))
      params.merge!(class: TWITTER_TIMELINE)

      html = "".html_safe
      html << clazz.script
      html << link_to(params[:title], clazz.default_options_timeline[:href], params)
      html
    end

    class << self
      def default_options
        @default_options ||= {          
          via: "tweetbutton",
          text: "",
          count: "vertical",
          lang: "en",
          related: ""
        }
      end

      def default_options_follow
        @default_options_follow ||= {
          title: "Follow @loremipsum007",
          size: "large",
          lang: "en"          
        }.merge(:href => "https://twitter.com/loremipsum007")
      end

      def default_options_timeline
        @default_options_timeline ||= {
          lang: "en"          
        }.merge("widget-id" => "341385883435536386", :href => "https://twitter.com/loremipsum007")
      end

      def script             
        "<script src=#{twitter_wjs} type='text/javascript'></script>".html_safe
      end

      def twitter_wjs
        "http://platform.twitter.com/widgets.js"
      end
    end # class
  end
end
