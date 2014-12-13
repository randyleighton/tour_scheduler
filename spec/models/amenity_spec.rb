describe Amenity do

  it { should belong_to :tour }
  it { should validate_presence_of :description}

end