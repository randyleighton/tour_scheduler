describe Tour do

  it { should have_many :amenities }
  it { should validate_presence_of :tour_date }
  it { should belong_to :user }

  it "creates a tour" do
    user = FactoryGirl.create(:user)
    binding.pry
    tour = FactoryGirl.create(:tour, tour_date: "2014/12/14", user_id: user.id)
    expect(tour.valid?).to be true
  end

end