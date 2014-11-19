module MyModule
  def self.get_facts
    "A string resulting from a external command"
  end
  def self.add_facts
    Facter.add("hello_world") do
      setcode do
        MyModule.get_facts
      end
    end
  end
end

MyModule.add_facts
