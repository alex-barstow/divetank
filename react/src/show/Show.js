import React from 'react';
import DiveData from './DiveData';
import PhotoCollection from './PhotoCollection';
import VideoCollection from './VideoCollection';
import MediaInput from './MediaInput';

class Show extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dive: [],
      images: [],
      videos: [],
      current_user: ''
    };
  }

  getDive() {
    $.ajax({
      method: 'GET',
      url: `/api/v1/dives/${this.props.id}`,
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ dive: data.dive, images: data.images, videos: data.videos, current_user: data.current_user });
    });
  }

  componentDidMount() {
    this.getDive();
  }

  render() {
    return (
      <div className='info-group'>
        <DiveData data={this.state.dive}/>
        <MediaInput />
        <PhotoCollection data={this.state.images}/>
        <VideoCollection data={this.state.videos}/>
      </div>
    )
  }
}

export default Show;
