class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :title
      t.string :link
      t.string :note

      t.timestamps null: false
    end
  end
end
