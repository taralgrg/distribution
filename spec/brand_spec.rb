require("spec_helper")

describe Brand, type: :model do
it {should have_many(:stores).through(:annoyings)}
# it {should validate_presence_of(:name)}
end
