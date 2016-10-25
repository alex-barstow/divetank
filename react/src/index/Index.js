import React, { Component } from 'react'
import { Router, Route, Link, IndexRoute, hashHistory, browserHistory } from 'react-router'
import DiveList from './DiveList';
import UserProfile from './UserProfile';
import ProfileMenu from './ProfileMenu'
import ChartComponent from './ChartComponent';

class Index extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dives: [],
      chartRanges: [],
      images: [],
      current_user: '',
      selectedBlock: 'dives'
    };
    this.getDives = this.getDives.bind(this);
    this.handleMenuClick = this.handleMenuClick.bind(this);
  }

  handleMenuClick() {
    if (this.state.selectedBlock === 'dives') {
      this.setState({ selectedBlock: 'chart' })
    } else {
      this.setState({ selectedBlock: 'dives' })
    }
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
    let onButtonClick = () => this.handleMenuClick();

    let displayBlock;

    if (this.state.selectedBlock === 'dives') {
      displayBlock = <DiveList dives={this.state.dives} images={this.state.images} />
    } else {
      displayBlock = <ChartComponent data={this.state.chartRanges}/>
    }

    return (
      <div className='info-group'>
        <UserProfile data={this.state.current_user} diveTotal={this.state.current_user.starting_dive_number + this.state.dives.length}/>
        <ProfileMenu data={this.state.selectedBlock} onClick={onButtonClick}/>
        {displayBlock}
      </div>
    )
  };
}

export default Index;
