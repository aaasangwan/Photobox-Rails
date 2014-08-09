task :upload => :environment do
  Cloudinary::Uploader.upload("#{Rails.root.join}/lib/tasks/bmw.jpg",:public_id => "/home/linux/Desktop/")
end
