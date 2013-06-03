# GoSocial

Currently there is support for the following social widgets/buttons:
  * Facebook
	- Like Button
        - Like Box
        - Comment Box
  * Pinterest
        - Pinit Button
        - Pinit_follow Button
        - Pinit Embeduser
  * Twitter
        - Tweet Button
        - Twitter_follow Button
        - Twitter timeline

## Installation

Add this line to your application's Gemfile:

    gem 'go_social'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install go_social

## Usage

Using SocialButtons is as simple as adding a single method call to your views:

ERB example:
```erb
// with optional parameters.

<%= like_button(:href => "url-to-be-liked") %>
<%= comment_box(:href => "url-to-be-liked" ) %>
<%= like_box(:href => "url-to-be-liked") %>

//data-pin-config can have values like above, beside or none
<%= pinit_button(:url=> "to-refer" , :media =>"image-url" , :description => "Amazing picture", "data-pin-config" => "above") %>
<%= pinit_follow_button(:title => "user-name") %>
<%= pinit_embeduser_button %>

<%= tweet_button(:via => "your-twitter-name") %>
<%= twitter_follow_button(:href => "twitter-user-url-to-follow") %>
<%= twitter_timeline("widget-id" => "your-widget-id", :href => "timeline-url") %>

```

Done. You'll have lovely Social Buttons all up in your view.

Of course, you can customize it. Depending on the type of button, there are different options.

### Like Button

* `:href` - The URL to like, the default is the current URL.
* `:send` - Whether to add a send button or not.
* `:layout` - Size and amount of social context next to button. Has 3 options `:standard`, `:button_count`, and `:box_count`
* `:width` - Width of the button
* `"show-faces"` - Show profile photos
* `:action` - Action name like 'like' or 'recommend'
* `:font` - Font for the button
* `:colorscheme` - Current colorscheme

More information can be found from [Facebook](http://developers.facebook.com/docs/reference/plugins/like/)

So, a simple like button can be added like this:

```erb
<%= like_button(:href => "url-to-be-liked") %>
```

### Pinit Button

* `:url` - The URL to share; the default is the current URL.
* `:media` - The image to be shared.
* `:description` - Description for the link.
* `"count-layout"` - Specify pinit count. It can be `horizontal`, `vertical` or `none`.

More information can be found from [Pinterest](http://pinterest.com/about/goodies/)

So, a simple pinit button can be added like this:

```erb
<%= pinit_button(url: "your-url", media: @picture.image.url, description: "Amazing Picture") %>
```

### Tweet Button

* `:url` - The URL to share; the default is the current URL.
* `:text` - The text that will appear in the tweet; the default is "Check this out!"
* `:via` - The attribution.  Defaults to "tweetbutton", but you should change that.
* `:lang` - Set the language for the tweet (no default).
* `:related` - Related Twitter accounts (no default).
* `:count` - The tweet count box position (values can be "none", "horizontal", or "vertical"; default is "vertical").

More information can be found from [Twitter](https://twitter.com/about/resources/buttons#tweet)

So, if you wanted to tweet, attribute it to "loremipsum007", and add some custom text, all from a tweet button with a horizontal counter, you'd do this:

```erb
<%= tweet_button(via: => "loremipsum007", url: "https://twitter.com/loremipsum007", :text => "AWESOME GEM.") %>
```

*Only the options you specify will be overridden; so if you only specify a new default `:via`, then the other defaults will stay intact.


# TODO

* Add tests :P
* Give more control to customize buttons
* Add more social buttons.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Copyright

Copyright (c) 2013 Rakesh Jha. See LICENSE for details.

Copyright (c) 2012 Yuva Kumar. See LICENSE for details.
