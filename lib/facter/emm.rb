require 'puppet/emm/facts'
# If we're being loaded inside the module, we'll need to go ahead and add our
# facts then won't we?
Puppet::Emm::Facts.install
