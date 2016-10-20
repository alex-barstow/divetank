import React from 'react';

const UserProfile = props => {
  let name = props.data.first_name;

  return (
    <div>
      <h1>{name}s Dive List</h1>
      <a href="/users/sign_out" className="button radius secondary home-button" data-method="delete">Sign Out</a>
      <a href="/dives/new" className="button radius alert home-button">Add a Dive</a>
    </div>
  );
}

export default UserProfile;
