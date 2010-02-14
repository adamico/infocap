# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_infocap_session',
  :secret      => 'b9f3264c8ea6bdfe7c9f4983110d64d626a7f270cb0360ac898b37f95405261c09ed11ac1150df7a36ed0d2a5ea9cf8e93a5c291fe23fddea05d0dc4ba580a0a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
