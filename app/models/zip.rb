class Zip
  include HTTParty

  base_uri "https://www.zipwise.com/webservices/radius.php?key=#{ ENV['ZIP_WISE_KEY']}&zip="

  def self.zip_codes_near(zipcode, distance)
    collection = []
    codes = self.get("#{zipcode}&radius=#{distance}&format=json")
    codes["results"].each do |code|
      collection << code["zip"]
    end
    collection
  end
end
