# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_profanityfilter"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Profanity Filter API - Ruby Client"
  spec.description   = "Profanity Filter is a bad word filter API that scans text for offensive language and masks detected swear words with a chosen replacement character. It returns the sanitized text and a boolean flag indicating if profanity was present."
  spec.homepage      = "https://apiverve.com/marketplace/profanityfilter?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/profanityfilter-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/profanityfilter"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
