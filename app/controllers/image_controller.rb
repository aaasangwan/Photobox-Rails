class ImageController < ApplicationController
  # There is no need of api controller. So i deleted it.
  # Just use /image/add_image for adding a new image url to mongodb
  
  # This is prevent csrf warning
  skip_before_filter :verify_authenticity_token, only: [:add_image]

  def uploader

  end

  def add_image
	image_url = params['url']
	name = image_url.split("/").last.split(".").first  	
	@u = Image.new(name: name, url: image_url)
	@u.save!
	# Run rails c and check for Image.all.last
  end
end