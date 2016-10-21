import React from 'react';

const Dive = props => {

  return (
    <li className='callout dive'>
      {props.title}
      <a href={`/dives/${props.id}`}  className="button radius primary home-button">View Details</a>
    </li>
  );
};

export default Dive;
