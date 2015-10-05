module RegisterShelterHelper
  def register_shelter
    fill_in 'Name', with: "Launch Shelter"
    fill_in 'Address', with: "123 Main St."
    fill_in 'City', with: "Anywhereville"
    fill_in 'State', with: "MA"
    fill_in 'Zip', with: 11111
    fill_in 'Phone', with: "1 (617) 555-1234"
    fill_in 'Website URL (optional)', with: "www.google.com"
    fill_in 'Contact Email (optional)', with: "test@gmail.com"
    u = "http://www.avsforum.com/photopost/data/2277869/9/9f/9f50538d_test.jpeg"
    fill_in 'Picture (optional)', with: u
    click_button "Submit"
  end
end
