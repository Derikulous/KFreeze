# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
KFreezePop::Application.config.secret_key_base = '28aca3fcf89249497cfb90074f0feae530717261fc47fea0243d1abe67708f05ecd2f2e6456cf84199afb0146feb1a91621cca0d18ce312d521c991d51e5b8fd'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

KFreezePop::Application.config.secret_key_base = secure_token
