require 'rails_helper'

describe Video do
  it { should have_valid(:video_url).when('https://www.youtube.com/watch?v=U-VCFG8yJ5w', 'https://vimeo.com/160504168') }
  it { should_not have_valid(:video_url).when(nil, '') }
end
