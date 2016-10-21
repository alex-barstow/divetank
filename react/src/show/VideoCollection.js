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
    <ul>
      {videos}
    </ul>
  )
}

export default VideoCollection;
