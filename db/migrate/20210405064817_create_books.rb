class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :ma_sach
      t.string :ten_sach
      t.references :authors, null: false, foreign_key: true
      t.references :nha_xuat_bans, null: false, foreign_key: true
      t.references :the_loais, null: false, foreign_key: true
      t.integer :nam_xb

      t.timestamps
    end
  end
end
