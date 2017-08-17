class CreateApiViPlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :api_vi_places do |t|
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
