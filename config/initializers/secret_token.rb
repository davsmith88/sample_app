# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# SampleApp::Application.config.secret_key_base = 'a58e012ad36c10311d7f26ff63c9190b8270f5c2ea8b03c4a4912c66b0b548398a3d420112f72fef9081425098dbce1f12a2c3cfb840b0cfef3c1a37ccf56e54'
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end
SampleApp::Application.config.secret_key_base = secure_token