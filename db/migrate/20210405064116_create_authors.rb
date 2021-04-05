class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :ma_tac_gia
      t.string :ten_tac_gia
      t.string :website
      t.string :ghi_chu

      t.timestamps
    end
  end
end
