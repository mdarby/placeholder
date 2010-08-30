Placeholder
===========
Placeholder is a simple little gem that inserts image placeholders into your design's wireframe. It uses www.placehold.it's awesome service.

Requirements
------------
Nada.

How To Install
--------------
Install the gem: `[sudo] gem install placeholder`

If you're using Rails, add `config.gem 'placeholder'` to your `config/environment.rb`.

If you're using Sinatra, add `require 'placeholder'` to your main application file.

Usage
-----
Placeholder requires a size as the first argument and can accept `:text`, `:fg_color` and `:bg_color` arguments.

Examples
--------
This will place a 200x300 image placeholder into your page with the text "Whoa Now". The default text is the image size.

`= Placeholder.new("200x300", :text => "Whoa Now")`

If you just need a square image, simply do:

`= Placeholder.new(100)`

You can also pass CSS classes and an ID if you'd like:

`= Placeholder.new(80, :id => "gravatar", :class => "active admin")`

About the Author
----------------
My name is [Matt Darby.](http://matt-darby.com) I’m a Partner and co-founder of [Protected Method LLC](http://www.protectedmethod.com) and hold a Master’s Degree in Computer Science from [Franklin University](http://www.franklin.edu) in sunny [Columbus, OH.](http://en.wikipedia.org/wiki/Columbus,_Ohio)
