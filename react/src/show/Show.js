import React from 'react';
import DiveData from './DiveData';
import PhotoCollection from './PhotoCollection';
import VideoCollection from './VideoCollection';

class Show extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dive: [],
      images: [],
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
      this.setState({ dive: data.dive, images: data.images, current_user: data.current_user });
    });
  }

  componentDidMount() {
    this.getDive();
  }

  render() {
    return (
      <div>
        <DiveData data={this.state.dive}/>
        <PhotoCollection data={this.state.images}/>
      </div>
    )
  }
}

export default Show;
