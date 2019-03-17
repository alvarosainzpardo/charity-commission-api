class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string "regno", limit: 14, default: "0", null: false
      t.integer "subno", default: 0, null: false
      t.string "name"
      t.string "orgtype"
      t.text "gd"
      t.string "aob"
      t.string "aob_defined", limit: 1
      t.string "nhs", limit: 1
      t.string "ha_no"
      t.string "corr"
      t.string "add1"
      t.string "add2"
      t.string "add3"
      t.string "add4"
      t.string "add5"
      t.string "postcode", limit: 15
      t.string "phone", limit: 100
      t.string "fax", limit: 100
      t.float "lon", limit: 53
      t.float "lat", limit: 53
 
      t.timestamps
    end
  end
end
