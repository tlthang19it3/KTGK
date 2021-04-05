class CreateTheLoais < ActiveRecord::Migration[6.1]
  def change
    create_table :the_loais do |t|
      t.string :ma_the_loai
      t.string :ten_the_loai

      t.timestamps
    end
  end
end
