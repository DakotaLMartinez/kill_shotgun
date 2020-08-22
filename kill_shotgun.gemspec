require_relative 'lib/kill_shotgun/version'

Gem::Specification.new do |spec|
  spec.name          = "kill_shotgun"
  spec.version       = KillShotgun::VERSION
  spec.authors       = ["DakotaLMartinez"]
  spec.email         = ["dakotaleemusic@gmail.com"]

  spec.summary       = %q{This gem kills a running shotgun server}
  spec.description   = %q{install the gem, run kill_shotgun from your terminal and you're good to go.}
  spec.homepage      = "https://github.com/DakotaLMartinez/kill_shotgun"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  
  spec.executables   = ["kill_shotgun", "kill_shotgun_wsl"]
  spec.require_paths = ["lib"]
end
