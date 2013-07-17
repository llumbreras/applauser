class CreateTextApplauses < ActiveRecord::Migration
  def change
    create_table :text_applauses do |t|
      t.string :body

    end
  end
end
