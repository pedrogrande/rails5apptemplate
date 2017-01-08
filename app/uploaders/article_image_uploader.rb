class ArticleImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :standard do
    process :eager => true
    process :resize_to_fill => [840]
  end

  version :thumbnail do
    eager
    resize_to_fit(100, 100)
  end

end
