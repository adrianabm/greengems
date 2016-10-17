class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    eager
    resize_to_fit(500, 500)
    cloudinary_transformation :quality => 80
    end
end
