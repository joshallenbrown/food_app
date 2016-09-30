class CreateMerches < ActiveRecord::Migration[5.0]
  def change
    create_table :merches do |t|
	  t.references :visit, foreign_key: true
      t.timestamps
    end
  end
end
