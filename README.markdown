PluginRouting
=============

This plugin is a port of James Adam's [RailsEngine routing extension][1].

It allows plugins to define their own routes in a familiar `routes.rb` file (see the example with this plugin).  Users of other such plugins can then add those plugin's routes in their application's routes at the appropriate location in `config/routes.rb` using:

    map.from_plugin(name_of_plugin)

If you are writing a plugin that defines its own routes, and you want them to be loaded using this mechanism, remember to have your plugin's `install.rb` write out a suitable message on the console explaining that the PluginRouting plugin should be installed too.

[1]: http://api.rails-engines.org/files/lib/engines/rails_extensions/routing_rb.html

Please send feedback to boss@airbladesoftware.com.


Copyright (c) 2007 Andrew Stewart, AirBlade Software Ltd, released under the MIT licence.
