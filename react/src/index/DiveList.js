import React from 'react';
import Dive from './Dive'

const DiveList = props => {

  let dives = props.data.map(response => {

    return (
      <Dive
        key={response.dives.id}
        id={response.dives.id}
        user_id={response.dives.user_id}
        title={response.dives.title}
        number={response.dives.number}
        site_name={response.dives.site_name}
        date={response.dives.date}
        location={response.dives.location}
        description={response.dives.description}
        rating={response.dives.rating}
        dive_type={response.dives.dive_type}
        favorited={response.dives.favorited}
        buddy_name={response.dives.buddy_name}
        max_depth={response.dives.max_depth}
        average_depth={response.dives.average_depth}
        duration={response.dives.duration}
        weather={response.dives.weather}
        water_temp={response.dives.water_temp}
        air_temp={response.dives.air_temp}
        banner_id={response.dives.banner_id}
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
