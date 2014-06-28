class AddSkinToneToAvatar < ActiveRecord::Migration
  def change
    add_column :avatars, :skin_tone, :string
  end
end
