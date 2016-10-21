import React from 'react';
import Photo from './Photo';

const PhotoCollection = props => {

  let images = props.data.map(image => {
    return (
      <Photo
        key={image.id}
        id={image.id}
        image={image.image}
      />
    )
  })

  return (
    <ul>
      {images}
    </ul>
  )
}

export default PhotoCollection;
