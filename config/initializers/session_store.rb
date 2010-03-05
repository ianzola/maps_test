# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_maps_test_session',
  :secret      => '6624ab2889bd505a4905ac3bf3e72f59085f2bef15d07b729168d38abfdf66a4eab2a46c586784f3f41d4ede44389deec1f1e27d6eebf7d37846e40fd2afc461'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
