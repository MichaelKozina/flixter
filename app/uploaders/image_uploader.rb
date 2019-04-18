class ImageUploader < CarrierWave::Uploader::Baseinclude CarrierWave::MiniMagick

  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :aws
  else
    storage :file
  end
  
  #storage :file
  #storage :aws
  #storage :fog
  
  process resize_to_fill: [800, 350]

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end