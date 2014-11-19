require 'spec_helper'
require 'lib/facter/mymodule'

describe 'hello_world_fact' do
  subject(:fact) { Facter.fact(:hello_world) }

  before :each do
    # Ensure we're populating Facter's internal collection with our Fact
    MyModule.stubs(:get_fact).returns("i'm in your puppet!")
    MyModule.add_facts
  end

  # A regular ol' RSpec example
  its(:value) { should eql("i'm in your puppet!") }

  after :each do
    # Make sure we're clearing out Facter every time
    Facter.clear
    Facter.clear_messages
  end
end
