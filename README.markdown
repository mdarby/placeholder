Placeholder
===========
Placeholder is a simple little gem that inserts image placeholders into your design's wireframe. It uses www.placehold.it's awesome service.

Requirements
------------
Nada.

How To Install
--------------
Install the gem: `[sudo] gem install placeholder`

Usage
-----
Placeholder requires a `:size` attribute, and can accept `:text`, `:height` and `:width` and even `:fg_color` and `:bg_color`

This will place a 300x300 image placeholder into your page with the text "Whoa Now". The default text is just the image size.

`= Placeholder.new(:size => 300, :text => "Whoa Now")`

About the Author
----------------
My name is [Matt Darby.](http://matt-darby.com) I’m a Partner and co-founder of [Protected Method LLC](http://www.protectedmethod.com) and hold a Master’s Degree in Computer Science from [Franklin University](http://www.franklin.edu) in sunny [Columbus, OH.](http://en.wikipedia.org/wiki/Columbus,_Ohio)