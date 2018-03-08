class CreateGeoIps < ActiveRecord::Migration[5.1]
  def change
    create_table :geo_ips do |t|

      t.timestamps
    end
  end
end
