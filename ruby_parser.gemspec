Gem::Specification.new do |s|
  # These dependencies appear in the Gemfile.
  s.add_development_dependency('rspec', '~> 2.8.0')
  s.add_dependency("racc", "1.4.7")
  s.add_dependency("sexp_processor", "3.0.10")
  s.add_dependency("ParseTree", "3.0.8")

  s.platform = Gem::Platform::RUBY
  s.summary = 'Fake gemspec for ruby_parser'
  s.name = 'zipr'
  s.homepage = 'https://github.com/frankshearar/ruby_parser/'
  s.email = 'frank@lshift.net'
  s.license = 'MIT'
  s.authors = ['Frank Shearar']
  s.version = '3.0.0a1fbs'
  s.requirements << 'none'
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if s.respond_to? :required_rubygems_version=
  # ls-files shows only those files under version control.
  s.files = `git ls-files lib`.split("\n")
  s.test_files = `git ls-files test`.split("\n")
  s.description = <<EOF
  Fake gemspec for ruby_parser so bundler can point to a git branch rather than a proper release.
EOF
end
