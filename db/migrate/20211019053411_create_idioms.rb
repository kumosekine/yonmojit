class CreateIdioms < ActiveRecord::Migration[6.0]
  def change
    create_table :idioms do |t|
      t.string :title
      t.text :text
      t.timestamps
    end
  end
end
