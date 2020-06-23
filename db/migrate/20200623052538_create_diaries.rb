class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :text
      t.references :user

      t.timestamps
    end
  end
end
