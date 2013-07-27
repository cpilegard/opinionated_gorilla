class Uploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process :resize_to_fill => [200, 200]

  version :thumb do
    process :resize_to_fill => [80, 80]
  end
  
  storage :file

  def store_dir
    'images'
  end
end