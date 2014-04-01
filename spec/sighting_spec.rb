require 'spec_helper'

describe Sighting do
  it { should belong_to :species }
  it { should belong_to :region }
end
