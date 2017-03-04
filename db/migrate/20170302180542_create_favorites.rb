class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :borough
      t.string :name
      t.string :descrip
      t.string :location

      t.timestamps
    end
  end
end
