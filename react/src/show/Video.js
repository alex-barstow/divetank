import React from 'react';

const Video = props => {
  let urlArray = props.url.split('=');
  let embedFragment = urlArray[urlArray.length - 1];

  return (
    <div className='video-wrapper'>
      <iframe width="320" height="180" src={`https://www.youtube.com/embed/${embedFragment}`} frameBorder="0" allowFullScreen></iframe>
    </div>
  )
}

export default Video;
