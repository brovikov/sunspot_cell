Gem::Specification.new do |s|
  s.name = %q{sunspot_cell}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Zheileman"]
  s.date = %q{2011-12-19}
  s.description = %q{This gem adds Cell support (for indexing rich documents) to Sunspot}
  s.email = %q{zheileman@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "init.rb",
    "lib/sunspot/rich_document.rb",
    "lib/sunspot_cell.rb",
    "lib/sunspot_cell/attribute_field.rb",
    "lib/sunspot_cell/composite_setup.rb",
    "lib/sunspot_cell/dsl/fields.rb",
    "lib/sunspot_cell/dsl/standard_query.rb",
    "lib/sunspot_cell/field_factory.rb",
    "lib/sunspot_cell/indexer.rb",
    "lib/sunspot_cell/setup.rb",
    "lib/sunspot_cell/type.rb"
  ]
  s.homepage = %q{https://github.com/zheileman/sunspot_cell}
  s.rdoc_options = ["--charset=UTF-8", "--main", "README.rdoc", "LICENSE"]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{This gem adds Cell support (for indexing rich documents) to Sunspot}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sunspot>, [">= 1.3.0"])
      s.add_development_dependency(%q<activerecord>, [">= 2.2"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
    else
      s.add_dependency(%q<sunspot>, [">= 1.3.0"])
      s.add_dependency(%q<activerecord>, [">= 2.2"])
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<sunspot>, [">= 1.3.0"])
    s.add_dependency(%q<activerecord>, [">= 2.2"])
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
  end
end