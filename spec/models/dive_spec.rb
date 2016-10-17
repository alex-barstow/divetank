require 'rails_helper'

describe Dive do
  it { should have_valid(:title).when('Folly Cove Night Dive', 'USS Oriskany Dive') }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:site_name).when('Folly Cove', 'USS Oriskany') }
  it { should_not have_valid(:site_name).when(nil, '') }

  it { should have_valid(:date).when('6/25/16', 'October 1st, 2016') }
  it { should_not have_valid(:date).when(nil, '') }

  it { should have_valid(:favorited).when(true, false) }
  it { should_not have_valid(:favorited).when(nil, '') }
end
