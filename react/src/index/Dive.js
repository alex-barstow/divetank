import React from 'react';

const Dive = props => {

  return (
    <div className='column'>
      <div className='callout card'>
        <div>
          <img src={props.banner} />
        </div>
        <div>
          <h2>{props.title}</h2>
        </div>
        <div>
          <a href={`/dives/${props.id}`}  className="button radius primary home-button">View Details</a>
        </div>
      </div>
    </div>
  );
};

export default Dive;
