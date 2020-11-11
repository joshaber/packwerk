# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "packwerk/version"

Gem::Specification.new do |spec|
  spec.name          = "packwerk"
  spec.version       = Packwerk::VERSION
  spec.authors       = ["Shopify Inc."]
  spec.email         = ["gems@shopify.com"]

  spec.summary       = "Packages for applications based on the zeitwerk autoloader"

  spec.description   = <<~DESCRIPTION
    Sets package level boundaries between a specified set of ruby
    constants to minimize cross-boundary referencing and dependency.
  DESCRIPTION
  spec.homepage      = "https://github.com/Shopify/packwerk"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Shopify/packwerk"
    spec.metadata["changelog_uri"] = "https://github.com/Shopify/packwerk/releases"
  end

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.bindir = "exe"
  spec.executables << "packwerk"

  spec.files = [".gitignore", ".rubocop.yml", ".ruby-version", "CODEOWNERS", "CODE_OF_CONDUCT.md", "CONTRIBUTING.md", "Gemfile", "Gemfile.lock", "LICENSE.md", "README.md", "Rakefile", "TROUBLESHOOT.md", "USAGE.md", "bin/console", "bin/setup", "dev.yml", "docs/cohesion.png", "exe/packwerk", "lib/packwerk.rb", "lib/packwerk/application_validator.rb", "lib/packwerk/association_inspector.rb", "lib/packwerk/checking_deprecated_references.rb", "lib/packwerk/cli.rb", "lib/packwerk/configuration.rb", "lib/packwerk/const_node_inspector.rb", "lib/packwerk/constant_discovery.rb", "lib/packwerk/constant_name_inspector.rb", "lib/packwerk/dependency_checker.rb", "lib/packwerk/deprecated_references.rb", "lib/packwerk/file_processor.rb", "lib/packwerk/files_for_processing.rb", "lib/packwerk/formatters/progress_formatter.rb", "lib/packwerk/generators/application_validation.rb", "lib/packwerk/generators/configuration_file.rb", "lib/packwerk/generators/inflections_file.rb", "lib/packwerk/generators/root_package.rb", "lib/packwerk/generators/templates/inflections.yml", "lib/packwerk/generators/templates/package.yml", "lib/packwerk/generators/templates/packwerk", "lib/packwerk/generators/templates/packwerk.yml.erb", "lib/packwerk/generators/templates/packwerk_validator_test.rb", "lib/packwerk/graph.rb", "lib/packwerk/inflections/custom.rb", "lib/packwerk/inflections/default.rb", "lib/packwerk/inflector.rb", "lib/packwerk/node.rb", "lib/packwerk/node_processor.rb", "lib/packwerk/node_visitor.rb", "lib/packwerk/offense.rb", "lib/packwerk/output_styles.rb", "lib/packwerk/package.rb", "lib/packwerk/package_set.rb", "lib/packwerk/parsed_constant_definitions.rb", "lib/packwerk/parsers.rb", "lib/packwerk/parsers/erb.rb", "lib/packwerk/parsers/factory.rb", "lib/packwerk/parsers/ruby.rb", "lib/packwerk/privacy_checker.rb", "lib/packwerk/reference.rb", "lib/packwerk/reference_extractor.rb", "lib/packwerk/reference_lister.rb", "lib/packwerk/run_context.rb", "lib/packwerk/sanity_checker.rb", "lib/packwerk/spring_command.rb", "lib/packwerk/updating_deprecated_references.rb", "lib/packwerk/version.rb", "lib/packwerk/violation_type.rb", "library.yml", "packwerk.gemspec", "service.yml", "shipit.rubygems.yml", "sorbet/config", "sorbet/rbi/gems/actioncable@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/actionmailbox@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/actionmailer@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/actionpack@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/actiontext@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/actionview@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/activejob@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/activemodel@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/activerecord@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/activestorage@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/activesupport@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/ast@2.4.1.rbi", "sorbet/rbi/gems/better_html@1.0.15.rbi", "sorbet/rbi/gems/builder@3.2.4.rbi", "sorbet/rbi/gems/byebug@11.1.3.rbi", "sorbet/rbi/gems/coderay@1.1.3.rbi", "sorbet/rbi/gems/colorize@0.8.1.rbi", "sorbet/rbi/gems/commander@4.5.2.rbi", "sorbet/rbi/gems/concurrent-ruby@1.1.6.rbi", "sorbet/rbi/gems/constant_resolver@0.1.5.rbi", "sorbet/rbi/gems/crass@1.0.6.rbi", "sorbet/rbi/gems/erubi@1.9.0.rbi", "sorbet/rbi/gems/globalid@0.4.2.rbi", "sorbet/rbi/gems/highline@2.0.3.rbi", "sorbet/rbi/gems/html_tokenizer@0.0.7.rbi", "sorbet/rbi/gems/i18n@1.8.2.rbi", "sorbet/rbi/gems/jaro_winkler@1.5.4.rbi", "sorbet/rbi/gems/loofah@2.5.0.rbi", "sorbet/rbi/gems/m@1.5.1.rbi", "sorbet/rbi/gems/mail@2.7.1.rbi", "sorbet/rbi/gems/marcel@0.3.3.rbi", "sorbet/rbi/gems/method_source@1.0.0.rbi", "sorbet/rbi/gems/mimemagic@0.3.5.rbi", "sorbet/rbi/gems/mini_mime@1.0.2.rbi", "sorbet/rbi/gems/mini_portile2@2.4.0.rbi", "sorbet/rbi/gems/minitest@5.14.0.rbi", "sorbet/rbi/gems/mocha@1.11.2.rbi", "sorbet/rbi/gems/nio4r@2.5.2.rbi", "sorbet/rbi/gems/nokogiri@1.10.9.rbi", "sorbet/rbi/gems/parallel@1.19.1.rbi", "sorbet/rbi/gems/parlour@4.0.1.rbi", "sorbet/rbi/gems/parser@2.7.1.4.rbi", "sorbet/rbi/gems/pry@0.13.1.rbi", "sorbet/rbi/gems/rack-test@1.1.0.rbi", "sorbet/rbi/gems/rack@2.2.2.rbi", "sorbet/rbi/gems/rails-dom-testing@2.0.3.rbi", "sorbet/rbi/gems/rails-html-sanitizer@1.3.0.rbi", "sorbet/rbi/gems/rails@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/railties@6.1.0.alpha-d80c18a391e33552ae2d943e68af56946f883f65.rbi", "sorbet/rbi/gems/rainbow@3.0.0.rbi", "sorbet/rbi/gems/rake@13.0.1.rbi", "sorbet/rbi/gems/rexml@3.2.4.rbi", "sorbet/rbi/gems/rubocop-performance@1.5.2.rbi", "sorbet/rbi/gems/rubocop-shopify@1.0.2.rbi", "sorbet/rbi/gems/rubocop-sorbet@0.3.7.rbi", "sorbet/rbi/gems/rubocop@0.82.0.rbi", "sorbet/rbi/gems/ruby-progressbar@1.10.1.rbi", "sorbet/rbi/gems/smart_properties@1.15.0.rbi", "sorbet/rbi/gems/spoom@1.0.4.rbi", "sorbet/rbi/gems/spring@2.1.0.rbi", "sorbet/rbi/gems/sprockets-rails@3.2.1.rbi", "sorbet/rbi/gems/sprockets@4.0.0.rbi", "sorbet/rbi/gems/tapioca@0.4.5.rbi", "sorbet/rbi/gems/thor@1.0.1.rbi", "sorbet/rbi/gems/tzinfo@2.0.2.rbi", "sorbet/rbi/gems/unicode-display_width@1.7.0.rbi", "sorbet/rbi/gems/websocket-driver@0.7.1.rbi", "sorbet/rbi/gems/websocket-extensions@0.1.4.rbi", "sorbet/rbi/gems/zeitwerk@2.3.0.rbi", "sorbet/tapioca/require.rb"]
  spec.require_paths = %w(lib)

  spec.required_ruby_version = ">= 2.6"

  spec.add_dependency("activesupport", ">= 5.2")
  spec.add_dependency("constant_resolver")
  spec.add_dependency("sorbet-runtime")

  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("sorbet")
  spec.add_development_dependency("m")

  # For Ruby parsing
  spec.add_dependency("ast")
  spec.add_dependency("parser")

  # For ERB parsing
  spec.add_dependency("better_html")
end
