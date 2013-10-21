class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :ip_address
      t.string :key
      t.string :url
      t.string :hostname
      t.string :provider
      t.string :city
      t.string :state
      t.string :country
      t.string :latitude
      t.string :longitude
      t.string :dma_code
      t.string :postal_code
      t.string :area_code
      t.string :gmt_offset
      t.decimal :image_size
      t.string :cert_path
      t.string :created_date
      t.string :browser_type
      t.string :browser_full_version
      t.string :browser_major_version
      t.string :user_agent
      t.string :os_type

      t.timestamps
    end
  end
end
