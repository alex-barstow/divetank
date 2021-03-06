import React from 'react';

const DiveData = props => {

  return (
    <div className='row dive-profile profile'>
      <div className='column'>
        <div className='row show-header'>
          <div className='column small-6'>
            <h1>{props.data.title}</h1>
            <h4 className='subheader'>{props.data.site_name}, {props.data.location}</h4>
            <h5>Rating: {props.data.rating}</h5>
            <p>{props.data.date}</p>
          </div>
          <div className='column small-6 dive-number-show'>
            <h1 className='subheader'># {props.data.number}</h1>
          </div>
        </div>
      </div>
      <div className='column small-6'>
        <h3 className='weather-conditions'>Description:</h3>
        <p>Buddy: {props.data.buddy_name}</p>
        <p>Type: {props.data.dive_type}</p>
        <p>Max Depth: {props.data.max_depth}ft</p>
        <p>Avg Depth: {props.data.average_depth}ft</p>
        <p>Duration: {props.data.duration}</p>

        <p>{props.data.description}</p>
        <a href={`/dives/${props.data.id}/edit`} className="button radius secondary home-button">Edit</a>
        <a href={`/dives/${props.data.id}`} className="button radius alert home-button" data-method="delete">Delete</a>
      </div>
      <div className='column small-6'>
        <h3 className='weather-conditions'>Weather Conditions:</h3>
        <p>Weather: {props.data.weather}</p>
        <p>Water Temperature: {props.data.water_temp}</p>
        <p>Air Temperature: {props.data.air_temp}</p>
      </div>
    </div>
  )
}

export default DiveData;
