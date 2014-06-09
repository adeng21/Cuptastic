require 'spec_helper'

describe Video do
  it{should validate_presence_of(:title)}
  it{should validate_presence_of(:link)}
  it{should validate_presence_of(:team)}
end
