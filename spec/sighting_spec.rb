require 'spec_helper'

describe Sighting do
  it { should belong_to :species }
  it { should belong_to :region }
  it { should validate_presence_of :datetime }
  it { should validate_presence_of :region_id }
end
