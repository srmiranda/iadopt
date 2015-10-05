module RegisterDogHelper
  def register_dog
    fill_in "Name", with: "Duke"
    select "German Shepherd Dog", from: 'Breed'
    select "large", from: 'Size'
    page.choose "dog[kids]", :option => true
    fill_in 'Age', with: 5.0
    page.choose "dog[gender]", :option => "male"
    page.choose "dog[fixed]", :option => true
    url = "http://www.petmd.com/sites/default/files/breedopedia/shepherd%20sam.jpg"
    fill_in 'Photo', with: url
  end
end
