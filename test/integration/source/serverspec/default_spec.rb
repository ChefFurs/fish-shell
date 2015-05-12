require 'spec_helper'

describe 'fish-shell::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe command('/usr/local/bin/fish --version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should contain 'fish' }
  end
end
