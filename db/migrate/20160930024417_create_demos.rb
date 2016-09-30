class CreateDemos < ActiveRecord::Migration[5.0]
  def change
    create_table :demos do |t|
      t.references :visit, foreign_key: true
      t.references :product, foreign_key: true
      t.references :flavor, foreign_key: true
      t.timestamps
    end
  end
end
