# GoSocial
[![Gem Version](https://badge.fury.io/rb/go_social.png)](http://badge.fury.io/rb/go_social)
[![Code Climate](https://codeclimate.com/github/Jrakesh/go_social.png)](https://codeclimate.com/github/Jrakesh/go_social)
[![Dependency Status](https://gemnasium.com/Jrakesh/go_social.png)](https://gemnasium.com/Jrakesh/go_social)
   
This includes common social widgets that are used too often in every web app these days. We often waste too much time integrating them. This gem provides a quick solution to that, saving your time and headaches. Currently there is limited support. Supported social-widgets/buttons are listed below :

##### Facebook
  * Like Button
  * Like Box
  * Comment Box

##### Pinterest
  * Pinit Button
  * Pinit_follow Button
  * Pinit Embeduser

##### Twitter
  * Tweet Button
  * Twitter_follow Button
  * Twitter timeline

##### Linked In
  * Linkedin Share Button
  * Linkedin Follow Company Button
  * Linkedin Member Profile Button

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

//counter can have values like top, right or none. By default it is top.
<%= linkedin_share_button(:counter => "right", :url => "linkedin-url-of-user-or-comapny-page") %>
<%= linkedin_follow_company_button(:counter => "right", :id => "company-id-to-follow") %>
//format can have values like inline or hover
<%= linkedin_profile_button(:format => "hover", :text => "John Doe", :width => "400px" , :id => "linkedin-url-of-user-or-comapny-page") %>

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
<%= pinit_button(:url => "your-url", :media => @picture.image.url, :description => "Amazing Picture") %>
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
<%= tweet_button(:via => "loremipsum007", :url => "https://twitter.com/loremipsum007", :text => "AWESOME GEM.") %>
```


*In all cases, only the options you specify will be overridden; so if you only specify a new default `:via`, then the other defaults will stay intact.


## TODO

* Add tests
* Give more control to customize buttons
* Add more social buttons.


## Queries or Feedback

If you have any issues with [go_social](https://github.com/Jrakesh/go_social), for which you cannot find the solution to the [documentation](https://github.com/Jrakesh/go_social), please add an [issue on GitHub](https://github.com/Jrakesh/go_social/issues) or fork the project and send a pull request.

Your suggestions are always welcome.


## Acknowledgement

Extends special thanks to my colleagues and friends for their constant motivation.

