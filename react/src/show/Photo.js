import React from 'react';

const Photo = props => {

  return (
    <div className='column photo'>
      <img src={`${props.image.url}`} />
    </div>
  )
}

export default Photo;
