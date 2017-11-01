class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "#{Rails.root}/public/avatars/#{model.id}"
  end

  process resize_to_fit: [300, 300]

  version :thumb do
    process resize_to_fit: [40,40]
  end


  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end