class CreateShains < ActiveRecord::Migration
  def change
    create_table :shains do |t|
      t.string :shainName
      t.string :shainNameYomi
      t.string :tel1
      t.string :tel2
      t.string :postNo
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
