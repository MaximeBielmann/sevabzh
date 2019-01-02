#start
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
   config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => ENV['CLOUDCUBE_ACCESS_KEY_ID'],       # required
    :aws_secret_access_key  => ENV['CLOUDCUBE_SECRET_ACCESS_KEY'],       # required
    :region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'cloud-cube-eu' # required
  # see https://github.com/jnicklas/carrierwave#using-amazon-s3
  # for more optional configuration
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end