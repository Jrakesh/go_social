module GoSocial
  module Assistant
    extend ActiveSupport::Concern

    module ClassMethods
      attr_reader :scriptized
      attr_writer :default_options
      alias_method :scriptized?, :scriptized

      def my_name
        self.name.demodulize
      end

      def help
        "Please HELP by filling in the help of the #{myname} button :) (see google+ button code)"
      end

      def options_to_data(opts)
        params = {}
        opts.each {|k, v| params["data-#{k}"] = v}
        params
      end

      def options_to_query(subject, opts)
        # formulate the url, and then strip the part before first '?'
        query_params = opts.slice(:url, :media, :description)
        full_url = subject.url_for(query_params)
        full_url.sub(/^([^?]*)/, '')
      end

      protected

      def help_note
        "Note: GoSocial will make sure that the widget scripts are rendered once only!"
      end
       
      # returns blank
      def blank_content
        "".html_safe
      end
    end
  end
end
