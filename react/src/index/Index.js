import React from 'react';
import DiveList from './DiveList'
import UserProfile from './UserProfile'

class Index extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dives: [],
      images: [],
      current_user: ""
    };
    this.getDives = this.getDives.bind(this);
  }

  getDives() {
    $.ajax({
      method: 'GET',
      url: '/api/v1/dives.json',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ dives: data.dives, images: data.images, current_user: data.current_user });
    });
  }

  componentDidMount() {
    this.getDives();
  }

  render() {

    return (
      <div>
        <div className='row'>
          <UserProfile data={this.state.current_user} diveTotal={this.state.current_user.starting_dive_number + this.state.dives.length}/>
        </div>
        <hr />
        <div>
          <DiveList dives={this.state.dives} images={this.state.images} />
        </div>
      </div>
    )
  };
}

export default Index;
