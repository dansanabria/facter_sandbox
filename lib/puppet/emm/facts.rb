require 'facter'
require 'puppet/emm/plugins'

module Puppet
  module Emm
    module Facts

      def self.install
        Facter.add(:emm_versions) do
          setcode do
            Puppet::Emm::Facts.version_str
          end
        end
        return nil
      end

      def self.version_str
        plugins = Puppet::Emm::Plugins.available
        return "#{plugins} y aqui le sumo la 2"
      end
    end
  end
end
   

      
