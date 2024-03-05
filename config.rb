require 'cloudinary'

Cloudinary.config_from_url("cloudinary://773191378594681:3dENtQ9rNfx9bCxAwEgsyXyhG3E@dgpk6t1we")
Cloudinary.config do |config|
  config.secure = true
end
