require("spec_helper")

describe Store, type: :model do
it {should have_many(:brands).through(:annoyings)}
# it {should validate_presence_of(:name)}
end
