# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photos_session',
  :secret      => '0c027c95e7f9f38e4e565a3606d04b73b4bf469f77ad0c82ed1da52646cc7cec038a16888ab8219cfeab91ae49ef687cba3616c0c451a4c50bd69bdff548560f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
