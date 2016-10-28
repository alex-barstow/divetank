import React from 'react';

const Dive = props => {

  return (
    <div className='column' data-equalizer-watch>
      <div className='callout card' data-equalizer-watch>
        <div className='header-pic'>
          <img src={props.banner} />
        </div>
        <div>
          <h4 className='subheader'>#{props.number}</h4>
        </div>
        <div>
          <h2>{props.title}</h2>
        </div>
        <div className='details-button'>
          <a href={`/dives/${props.id}`}  className="button radius home-button">View Details</a>
        </div>
      </div>
    </div>
  );
};

export default Dive;
