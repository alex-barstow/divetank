import React from 'react';

class Show extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dive: ""
    };
  }

  getDive() {
    $.ajax({
      method: 'GET',
      url: 'api/v1/dives.json',
      contentType: 'application/json'
    })
    .done(data => {
      this.setState({ dives: data.dives, current_user: data.current_user })
    });
  }


}

export default Show;
