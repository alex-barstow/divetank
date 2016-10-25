import React from 'react';

const Dive = props => {

  return (
    <div className='column'>
      <div className='callout card'>
        <div className='header-pic'>
          <img src={props.banner} />
        </div>
        <div>
          <p>#{props.number}</p>
        </div>
        <div>
          <h2>{props.title}</h2>
        </div>
        <div className='details-button'>
          <a href={`/dives/${props.id}`}  className="button radius primary home-button">View Details</a>
        </div>
      </div>
    </div>
  );
};

export default Dive;
