require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should have_many(:posts).dependent(:destroy) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
end
