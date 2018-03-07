class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.string :city
      t.text :content

      t.timestamps
    end
  end
end
