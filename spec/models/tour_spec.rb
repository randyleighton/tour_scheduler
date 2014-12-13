describe Tour do

  it { should have_many :amenities}
  it { should validate_presence_of :tour_date}

end