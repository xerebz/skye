class AddgenderToAvatar < ActiveRecord::Migration
  def change
    add_column :avatars, :gender, :string
  end
end
