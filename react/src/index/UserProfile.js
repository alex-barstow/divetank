import React from 'react';

const UserProfile = props => {

  let name = props.data.first_name + ' ' + props.data.last_name;
  let userId = props.data.id;
  let agency = props.data.agency;
  let certifications = props.data.certifications;
  let location = props.data.location;

  let diveTotal;
  if (props.diveTotal === 1) {
    diveTotal = `${props.diveTotal} dive`
  } else {
    diveTotal = `${props.diveTotal} dives`
  }

  let certificationDate = '';
  if (props.data.certification_date) {
    certificationDate = `Certified since ${props.data.certification_date}`;
  }

  return (

    <div>
      <div>
        <a href="/users/sign_out" className="button radius secondary home-button" data-method="delete">Sign Out</a>
        <a href="/dives/new" className="button radius alert home-button">Add a Dive</a>
      </div>
      <div className='profile'>
        <div className='row'>
          <div className='column small-3'>
            <img src='http://www.msudenver.edu/media/sampleassets/profile-placeholder.png' />
          </div>
          <div className='column small-9'>
            <h1>{name}</h1>
            <h3>{diveTotal}</h3>
            <p>{location}</p>
            <p>{agency}</p>
            <p>{certificationDate}</p>
            <p>{certifications}</p>
            <a href={`/users/${userId}/edit`} className="button radius primary home-button float-right">Edit Profile</a>
          </div>
        </div>
      </div>
    </div>
  );
}

export default UserProfile;
