import React from 'react';

const UserProfile = props => {
  let name, userId, agency, certifications, location, diveTotal, certificationDate, profilePic;

  if (props.data !== '') {
    name = props.data.first_name + ' ' + props.data.last_name;
    userId = props.data.id;
    agency = props.data.agency;
    certifications = props.data.certifications;
    location = props.data.location;

    if (props.diveTotal === 1) {
      diveTotal = `${props.diveTotal} dive`;
    } else {
      diveTotal = `${props.diveTotal} dives`;
    }

    if (props.data.certification_date) {
      certificationDate = `Certified since ${props.data.certification_date}`;
    }

    if (props.data.profile_photo.url !== null) {
      profilePic = props.data.profile_photo.url;
    } else {
      profilePic = 'http://www.devlinkrepo.com/includes/person-placeholder.png';
    }
  }

  return (

    <div className='row profile'>
      <div className='column small-3 prof-pic'>
        <img src={profilePic} />
      </div>
      <div className='column small-9 prof-data'>
        <h1>{name}</h1>
        <h3>{diveTotal}</h3>
        <p>{location}</p>
        <p>{agency}</p>
        <p>{certificationDate}</p>
        <p>{certifications}</p>
        <a href={`/users/${userId}/edit`} className="button radius primary home-button float-right">Edit Profile</a>
      </div>
    </div>
  );
}

export default UserProfile;
