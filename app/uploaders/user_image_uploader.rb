class UserImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick

  # storage :file
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def default_url
  #   ActionController::Base.helpers.asset_path("fallbacks/placeholder.png")
  # end

  process resize_to_fit: [800, 800]

  version :thumb do
    process :resize_to_fit => [100, 100]
  end

  version :detail do
    process :resize_to_fit => [400, 400]
  end

end