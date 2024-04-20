GraphQL::FragmentCache.configure do |config|
  config.cache_store = Rails.cache
  config.enabled = ENV['CACHING'] == 'enabled'
end
