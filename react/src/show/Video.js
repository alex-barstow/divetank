import React from 'react';

const Video = props => {
  let urlArray = props.url.split('=');
  let embedFragment = urlArray[urlArray.length - 1];

  return (
    <div className='column'>
      <iframe src={`https://www.youtube.com/embed/${embedFragment}`}></iframe>
    </div>
  )
}

export default Video;
