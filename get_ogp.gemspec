require_relative 'lib/get_ogp/version'

Gem::Specification.new do |spec|
  spec.name          = "get_ogp"
  spec.version       = GetOgp::VERSION
  spec.authors       = ["sinn22"]
  spec.email         = ["sinn.rails@gmail.com"]

  spec.summary       = %q{To get website ogp data.}
  spec.description   = %q{To get website ogp data. For example, image, title, description, type...}
  spec.homepage      = "https://rubygems.org/gems/get_ogp"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sinn22/get_ogp"
  spec.metadata["changelog_uri"] = "https://github.com/sinn22/get_ogp"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "faraday"
  spec.add_dependency "rspec"

end
