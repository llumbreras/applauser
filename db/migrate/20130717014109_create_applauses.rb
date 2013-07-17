class CreateApplauses < ActiveRecord::Migration
  def change
    create_table :applauses do |t|
      t.string :body
      t.belongs_to :user

      t.timestamps
    end
    add_index :applauses, :user_id
  end
end
