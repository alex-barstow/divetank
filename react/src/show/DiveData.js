import React from 'react';

const DiveData = props => {

  return (
    <div className='dive-profile profile'>
      <h1>{props.data.title}</h1>
      <p>{props.data.rating}</p>
      <p>{props.data.date}</p>
      <p>{props.data.site_name}, {props.data.location}</p>
      <p>Buddy: {props.data.buddy_name}</p>
      <p>Type: {props.data.type}</p>
      <p>Max: {props.data.max_depth}ft Avg: {props.data.average_depth}</p>
      <p>Duration: {props.data.duration}</p>
      <p>Weather: {props.data.weather}</p>
      <p>Water Temperature: {props.data.water_temp}</p>
      <p>Air Temperature: {props.data.air_temp}</p>
      <p>{props.data.description}</p>
      <a href={`/dives/${props.data.id}/edit`} className="button radius secondary home-button">Edit</a>
      <a href={`/dives/${props.data.id}`} className="button radius alert home-button" data-method="delete">Delete</a>
      <a href='/dives'>Back</a>
    </div>
  )
}

export default DiveData;
