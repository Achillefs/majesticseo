# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "majesticseo"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Achilles Charmpilas"]
  s.date = "2011-12-08"
  s.description = "A ruby-friendly interface to the Majestic SEO API."
  s.email = ["ac@humbuckercode.co.uk"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/majesticseo.rb", "lib/majesticseo/client.rb", "lib/majesticseo/data_table.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_majesticseo.rb", ".gemtest"]
  s.homepage = "http://github.com/Achillefs/majesticseo"
  s.post_install_message = "PostInstall.txt"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "majesticseo"
  s.rubygems_version = "1.8.10"
  s.summary = "A ruby-friendly interface to the Majestic SEO API."
  s.test_files = ["test/test_helper.rb", "test/test_majesticseo.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.0.2"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 2.12"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.0.2"])
      s.add_dependency(%q<nokogiri>, [">= 1.4.0"])
      s.add_dependency(%q<hoe>, ["~> 2.12"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.0.2"])
    s.add_dependency(%q<nokogiri>, [">= 1.4.0"])
    s.add_dependency(%q<hoe>, ["~> 2.12"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
  end
end
