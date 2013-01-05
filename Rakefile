require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/majesticseo'

Hoe.plugin :newgem
$hoe = Hoe.spec 'majesticseo' do
  self.developer 'Achilles Charmpilas', 'ac@humbuckercode.co.uk'
  self.post_install_message = 'PostInstall.txt'
  self.rubyforge_name       = self.name
  self.extra_deps           = [['activesupport','>= 3.0.0'], ['nokogiri','>= 1.4.0']]

end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }