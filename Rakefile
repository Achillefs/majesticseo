require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/majesticseo'

Hoe.plugin :newgem
$hoe = Hoe.spec 'majesticseo' do
  self.developer 'Achilles Charmpilas', 'ac@humbuckercode.co.uk'
  self.post_install_message = 'PostInstall.txt' # TODO remove if post-install message not required
  self.rubyforge_name       = self.name # TODO this is default value
  self.extra_deps           = [['activesupport','>= 2.0.2'], ['nokogiri','>= 1.4.0']]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }