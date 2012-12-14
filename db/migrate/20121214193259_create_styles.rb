class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :url
      t.text :css
      t.text :sass

      t.timestamps
    end
  end
end
