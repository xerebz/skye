#TODOOOOOOo

#seeding the database with items

# Item.create!([
#   {name: "BehindTheBlossoms-Pink-Hairstyle"},
#   {name: "BehindTheBlossoms-Lavender-Hairstyle"},
#   {name: "WIPfjdkal"},
#   {name: "WarmThermal-Snow-LongSleevedShirt"},
#   {name: "FleepTheCloudsheep-HoveringPose"},
#   {name: "ChipperUpbeatNatural-ForestGreen-Eyes"},
#   {name: "BehindTheBlossoms-Blush-Makeup"},
#   {name: "WIPDollyBowHair"},
#   {name: "SkyeERCitizenUniform-Navy-Jacket"},
#   {name: "SkyeERCitizenUniform-Navy-Slacks"},
#   {name: "BehindTheBlossoms-Chestnut-Eyebrows"},
#   {name: "Piqued-Mouth"},
#   {name: "SkyeERCitizen-Navy-TracksuitJacket"},
#   {name: "SpeakingContentedly-Mouth"},
#   {name: "CheckeredPuff-Purple-Scarf"},
#   {name: "CheekyGrin-Mouth"},
#   {name: "CalmingGaze-SiennaBrown-Eyebrows"},
#   {name: "SkyeERCitizen-PinkNWhite-Skirt"},
#   {name: "SkyeERCitizen-PinkNWhite-Blouse"},
#   {name: "CheckeredPuff-Red-Scarf"},
#   {name: "SkyeERCitizenUniform-Navy-Loafers"},
#   {name: "DraconianRule-Crimson-Eyebrows"},
#   {name: "SkyeERCitizen-PinkNWhite-Stockings"},
#   {name: "BehindTheBlossomsFloppy-Pink-KnitSweater"},
#   {name: "GrumpySpectre-Indigo-Eyes"},
#   {name: "BuddingBeat-White-Headphones"},
#   {name: "TrustingPeer-AgateGreen-Eyes"},
#   {name: "SkyeERCitizen-PeriwinkleNWhite-Loafers"},
#   {name: "TrustingPeer-Gray-Eyebrows"},
#   {name: "CalmingGaze-Eyes-GlassBlue"},
#   {name: "BehindTheBlossoms-Auburn-Eyes"},
#   {name: "SkyeERCitizen-PeriwinkleNWhite-Stockings"},
#   {name: "SereneKindness-OceanBlue-Eyes"},
#   {name: "SkyeERCitizenUniform-Navy-DressShirt"},
#   {name: "PeppyPreppy-Raspberry-PonytailHairstyle"},
#   {name: "SereneKindess-Flushed-EyeshdwNBlushMakeup"},
#   {name: "SemiSheenLycra-Black-Tights"},
#   {name: "Disappearing_Briefs"},
#   {name: "SemiSheenLycra-Silver-Tights"},
#   {name: "DecidedlySatisfiedSmile-Mouth"},
#   {name: "BehindTheBlossomsFloppy-Lavender-KnitSweater"},
#   {name: "HomecomingTrail-Background"},
#   {name: "MischeivousThought-AshBrown-Eyebrows"},
#   {name: "UghNoMouth"},
#   {name: "BitOfABother-Mouth"},
#   {name: "Disappearing_Bra"},
#   {name: "CheerfulGlint-AshBrown-Eyebrows"},
#   {name: "BuddingBeat-PeonyPink-Headphones"},
#   {name: "Mischeivous-Mouth"},
#   {name: "SugarlessCandy-Lavender-PigtailsHairstyle"},
#   {name: "SmilingToMyself-Mouth"},
#   {name: "Background_Equipable"},
#   {name: "WIP-Boots"},
#   {name: "TobiasHeroic-Brown-Hairstyle"},
#   {name: "PeppyPreppy-Auburn-PonytailHairstyle"},
#   {name: "Rodeo-CherryRed-Boots"},
#   {name: "SereneKindess-SpokenGently-Mouth"},
#   {name: "WIPfdaf"},
#   {name: "SugarlessCandy-LavenderDrop-HeartUGazeEyes"},
#   {name: "TomasSmooth-HighlightedChestnut-Hairstyle"},
#   {name: "WIPBackground_Equipable"},
#   {name: "TrustingEyes-Gray-Eyebrows"},
#   {name: "DraconianRule-Crimson-Eyes"},
#   {name: "WeddingConcerto-Ivory-BabyGrandPiano"},
#   {name: "CheerfulGlint-SkyBlue-Eyes"},
#   {name: "ShyPeep-Mouth"},
#   {name: "GrumpySpectre-Indigo-Face"},
#   {name: "MischeivousThought-AgateGreen-Eyes"},
#   {name: "BehindTheBlues-SoftGray-Glasses"},
#   {name: "ElissasTresses-OrangeCaramel-Hairstyle"},
#   {name: "RolledCuff-MedBlue-Jeans"},
#   {name: "SkyeERCitizen-PinkNWhite-Shoes"},
#   {name: "BehindTheBlossoms-Red-Glasses"},
#   {name: "WarmThermal-GrayBlue-LongSlvShirt"},
#   {name: "GentlyCurious-Blush-Makeup"},
#   {name: "SkyeERCitizen-PeriwinkleNWhite-Blouse"},
#   {name: "GentlyCurious-Mouth"},
#   {name: "SkyeERCitizen-PeriwinkleNWhite-Skirt"},
#   {name: "Disappearing_Panties"},
#   {name: "GentlyCuriousGaze-LilypadGreen-Eyes"},
#   {name: "ReubenStyledSporty-PaleFawn-Hairstyle"},
#   {name: "GentlyCuriousGaze-AshBrown-Eyebrows"},
#   {name: "SereneKindness-RedBrown-Eyebrows"}
# ])

#hook up the contents of the image uploads directory with the appropriate item

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
