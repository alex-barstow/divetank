import React from 'react';
import DiveList from './DiveList';
import UserProfile from './UserProfile';
import ChartComponent from './ChartComponent';

class Index extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dives: [],
      chartRanges: [],
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
      this.setState({ dives: data.dives, chartRanges: data.chartRanges, images: data.images, current_user: data.current_user });
    });
  }

  componentDidMount() {
    this.getDives();
  }

  render() {

    return (
      <div className='info-group'>
        <UserProfile data={this.state.current_user} diveTotal={this.state.current_user.starting_dive_number + this.state.dives.length}/>
        <ChartComponent data={this.state.chartRanges}/>
        <DiveList dives={this.state.dives} images={this.state.images} />
      </div>
    )
  };
}

export default Index;
