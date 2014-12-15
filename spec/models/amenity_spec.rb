describe Amenity do

  it { should belong_to :tour }
  it { should validate_presence_of :description}

  it "should create a valid amenity" do
    amenity = FactoryGirl.create(:amenity)
    expect(Amenity.all).to eq [amenity]
  end

end