CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['CLOUDCUBE_ACCESS_KEY_ID'],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV['CLOUDCUBE_SECRET_ACCESS_KEY'],                        # required unless using use_iam_profile
    region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'cloud-cube-eu'                                      # required
end