class MakeApplausesPolymorphic < ActiveRecord::Migration
  def up
  	remove_column :applauses, :body
  	add_column :applauses, :content_type, :string
  	add_column :applauses, :content_id, :integer
  	add_index :applauses, [:content_type, :content_id]
  end

  def down
  	remove_index :applauses, column: [:content_type, :content_id]
  	remove_column :applauses, :content_id
  	remove_column :applauses, :content_type
  	add_column :applauses, :body, :string
  end
end
