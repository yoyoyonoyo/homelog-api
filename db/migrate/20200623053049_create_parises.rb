class CreateParises < ActiveRecord::Migration[6.0]
  def change
    create_table :parises do |t|
      t.string :content
      t.references :diary

      t.timestamps
    end
  end
end
