class CreatePhotoApplauses < ActiveRecord::Migration
  def change
    create_table :photo_applauses do |t|
      t.attachment :image

    end
  end
end
