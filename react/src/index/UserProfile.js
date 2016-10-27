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
      certificationDate = `certified since ${props.data.certification_date}`;
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
        <div className='row'>
          <div className='column small-6'>
            <h1>{name}</h1>
            <h4 className='subheader'>{location}</h4>
            <h5>{agency} {certificationDate}</h5>
            <h5 className='certs'>Certifications:</h5>
            <h5>{certifications}</h5>
          </div>
          <div className='dive-number column small-6'>
            <h2>{diveTotal}</h2>
          </div>
        </div>
        <a href={`/users/${userId}/edit`} className="button radius secondary home-button float-right">Edit Profile</a>
      </div>
    </div>
  );
}

export default UserProfile;
