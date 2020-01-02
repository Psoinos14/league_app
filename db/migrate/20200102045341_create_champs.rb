class CreateChamps < ActiveRecord::Migration[6.0]
  def change
    create_table :champs do |t|
      t.string :name
      t.string :ult
      t.string :tier

      t.timestamps
    end
  end
end
