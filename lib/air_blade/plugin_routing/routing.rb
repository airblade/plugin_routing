module AirBlade
  module PluginRouting
    module Routing
      def from_plugin(name)
        plugin_root = File.join(RAILS_ROOT, 'vendor', 'plugins')
        routes_path = File.join(plugin_root, name.to_s, 'routes.rb')
        eval(IO.read(routes_path), binding, routes_path) if File.file?(routes_path)
      end
    end
  end
end
