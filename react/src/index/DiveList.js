import React from 'react';
import Dive from './Dive'

const DiveList = props => {
  let images = props.images;
  let banner = 'http://thekeywestfishingreport.com/wp-content/uploads/2012/07/Dive_Flag.jpg';
  let dives = props.dives.map(dive => {
    if (images.length > 0) {
      images.map(image => {
        if (image.dive_id === dive.id) {
          banner = image.image.url;
        }
      });
    }

    return (
      <Dive
        key={dive.id}
        id={dive.id}
        user_id={dive.user_id}
        title={dive.title}
        number={dive.number}
        site_name={dive.site_name}
        date={dive.date}
        location={dive.location}
        description={dive.description}
        rating={dive.rating}
        dive_type={dive.dive_type}
        favorited={dive.favorited}
        buddy_name={dive.buddy_name}
        max_depth={dive.max_depth}
        average_depth={dive.average_depth}
        duration={dive.duration}
        weather={dive.weather}
        water_temp={dive.water_temp}
        air_temp={dive.air_temp}
        banner={banner}
      />
    );
  });
  return (
    <div className='row small-up-1 medium-up-2 large-up-3'>
      {dives}
    </div>
  );
};

export default DiveList;
