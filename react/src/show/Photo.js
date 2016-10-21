import React from 'react';

const Photo = props => {
  
  return (
    <img src={`${props.image.url}`} className="dive-image" />
  )
}

export default Photo;
