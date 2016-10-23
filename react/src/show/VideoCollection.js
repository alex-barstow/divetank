import React from 'react';
import Video from './Video';

const VideoCollection = props => {
  let videos = props.data.map(video => {
    return (
      <Video
        key={video.id}
        id={video.id}
        url={video.video_url}
      />
    )
  })

  return (
    <ul className='row small-up-1 medium-up-3 large-up-4'>
      {videos}
    </ul>
  )
}

export default VideoCollection;
