require "zhulei-canonical-rails/engine"

module ZhuleiCanonicalRails

  # Default way to setup ZhuleiCanonicalRails. Run `rails g canonical_rails:install` to create
  # a fresh initializer with all configuration values.
  #
  # the config\setup concept politely observed at and borrowed from Devise: https://github.com/plataformatec/devise/blob/master/lib/devise.rb

  def self.setup
    yield self
  end

  mattr_accessor :host
  @@host = nil

  mattr_accessor :port
  @@port = nil

  mattr_accessor :protocol
  @@protocol = nil

  mattr_accessor :collection_actions
  @@collection_actions = [:index]

  mattr_accessor :whitelisted_parameters
  @@whitelisted_parameters = []

  mattr_accessor :opengraph_url
  @@opengraph_url = false

  def self.sym_collection_actions
    @@sym_collection_actions ||= self.collection_actions.map(&:to_sym)
  end

  def self.sym_whitelisted_parameters
    @@sym_whitelisted_parameters ||= self.whitelisted_parameters.map(&:to_sym)
  end
end
