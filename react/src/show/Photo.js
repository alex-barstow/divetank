import React from 'react';

const Photo = props => {

  return (
    <li>
      <img src={`${props.image.url}`} className="dive-image" />
    </li>
  )
}

export default Photo;
