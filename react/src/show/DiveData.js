import React from 'react';

const DiveData = props => {

  return (
    <div>
      <h1>{props.data.title}</h1>
      <a href={`/dives/${props.data.id}/edit`} className="button radius secondary home-button">Edit</a>
      <a href={`/dives/${props.data.id}/edit`} className="button radius alert home-button" data-method="delete">Delete</a>
      <a href='/dives'>Back</a>
      <p>{props.data.site_name}</p>
      <p>{props.data.max_depth} ft</p>
      <p>{props.data.date}</p>
    </div>
  )
}

export default DiveData;
