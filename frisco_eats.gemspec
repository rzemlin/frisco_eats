# frozen_string_literal: true

require_relative "lib/frisco_eats/version"

Gem::Specification.new do |spec|
  spec.name          = "frisco_eats"
  spec.version       = FriscoEats::VERSION
  spec.authors       = ["rzemlin"]
  spec.email         = ["34727847+rzemlin@users.noreply.github.com"]

  spec.summary       = "Summary"
  spec.description   = "Description"
  spec.homepage      = "https://github.com/rzemlin/frisco_eats"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rzemlin/frisco_eats"
  spec.metadata["changelog_uri"] = "https://github.com/rzemlin/frisco_eats/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

   #Uncomment to register a new dependency of your gem
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "open-uri"
  spec.add_development_dependency "colorize"



  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
