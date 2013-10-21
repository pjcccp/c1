class Certificate < ActiveRecord::Base
  attr_accessible :area_code, :browser_full_version, :browser_major_version, :browser_type, :cert_path, :city, :country, :created_date, :dma_code, :gmt_offset, :hostname, :image_size, :ip_address, :key, :latitude, :longitude, :os_type, :postal_code, :provider, :state, :url, :user_agent
end
