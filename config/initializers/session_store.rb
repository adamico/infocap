# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_infocap_session',
  :secret => '02015a2b0c6d8031399f58e63e4af1137308c14b29b150db01a67eec41693aef715af648f370c4f058dd9bfa9ea0e2d70cb41e2755559751fbf95f16bb8d3116'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
