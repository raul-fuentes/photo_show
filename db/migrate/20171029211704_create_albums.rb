class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.belongs_to :user, foreign_key: true
      t.string     :name
      t.boolean    :public
      t.text       :photos

      t.timestamps
    end
  end
end