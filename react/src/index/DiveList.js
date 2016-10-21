import React from 'react';
import Dive from './Dive'

const DiveList = props => {

  let dives = props.data.map(dive => {
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
        banner_id={dive.banner_id}
      />
    );
  });
  return (
    <div>
      <ul>
        {dives}
      </ul>
    </div>
  );
};

export default DiveList;
