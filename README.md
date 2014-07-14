hangout_embed
=============

Deomnstrating the possibility to "embed" a hangout in your page, mostly just an app with a callback...

So you can't exactly embed hangouts in a page. What you can do is have a ''start a hangout button'' that passes some initial data along to a specified hangout app. You can use the start data to pass important data along like the context in which the hangout was started, the hangout app then can be used to make a callback to an API endpoint transmitting the hangout URL so other people can join as well! =)

That's what this repo demonstrates, the hangout app is `test_app.xml` while `callback_registration.rb` is a simple sinatra app demonstrating the registration of hangouts via the callback.
