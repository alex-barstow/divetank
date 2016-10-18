require 'rails_helper'

describe Dive do
  it { should have_valid(:title).when('Folly Cove Night Dive', 'USS Oriskany Dive') }
  it { should_not have_valid(:title).when(nil, '') }

  it { should have_valid(:site_name).when('Folly Cove', 'USS Oriskany') }
  it { should_not have_valid(:site_name).when(nil, '') }

  it { should have_valid(:date).when('2016-10-10', Date.today) }
  it { should_not have_valid(:date).when(nil, '') }

  it { should have_valid(:favorited).when(true, false) }
end
