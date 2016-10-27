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
    <ul className='row small-up-1 medium-up-3 large-up-4 photo-list'>
      {images}
    </ul>
  )
}

export default PhotoCollection;
