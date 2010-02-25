# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_infocap_session',
  :secret => 'e9b51f366fba57104dd16a1d5f1d17dc0ac282da5c2aa026d5b1d4a29b0c4a1a09934cccac84a3529f2245e2289991824adbc7cd2daa1111d13de9eca076adb5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
