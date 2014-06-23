#seeding the database based on the contents of the image uploads directory

uploads_directory = Rails.root.join("public","uploads","image","image_layer")
image_layers = Dir.glob(uploads_directory+"*")
image_layers.each do |image_layer|
  item_name = File.basename(image_layer,".*")
  item_name.sub!(/^\dof\d/,'')
  item = Item.find_or_create_by(name:item_name)
  image = Image.create!(:item => item)
  image.image_layer = File.open(image_layer)
  item.images << image
end