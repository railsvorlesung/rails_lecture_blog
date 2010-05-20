# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lectureblog_session',
  :secret      => '0af92f690503fd607161a10d5215a2b6fddccdaaacc750794e36f9421d7f725c304872f48d3dc1de1e66679e2d243857cdc9000ac646a089c0831f73f0880b92'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
