import React from 'react';

const Dive = props => {

  return (
    <div className='column callout'>
      <h2>{props.title}</h2>
      <div className='small-centered'>
        <a href={`/dives/${props.id}`}  className="button radius primary home-button">View Details</a>
      </div>
    </div>
  );
};

export default Dive;
