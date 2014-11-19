require 'spec_helper'
require 'lib/facter/emm'

describe Puppet::Emm::Facts do
  describe '.version_str' do
    subject(:version_str) { described_class.version_str }
    let(:plugins) { "Im a stringno" }

    before :each do
      Puppet::Emm::Plugins.should_receive(:available).and_return(plugins)
    end

    context 'the first try' do
      it { should be_instance_of String }
      it { should eql "Im a stringno y aqui le sumo la 2" }
    end
  end
end
