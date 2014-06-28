class AddSexToAvatar < ActiveRecord::Migration
  def change
    add_column :avatars, :sex, :string
  end
end
