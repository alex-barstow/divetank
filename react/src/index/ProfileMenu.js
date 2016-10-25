import React from 'react';

const ProfileMenu = props => {

  let classNameChart, classNameDives;
  if (props.data) {
    if (props.data === 'chart') {
      classNameChart = 'active'
    } else if (props.data === 'dives') {
      classNameDives = 'active'
    }
  }
  return (
    <ul className='menu align-right'>
      <li className={classNameDives}><a href='#'>Dives</a></li>
      <li className={classNameChart}><a href='#'>Chart</a></li>
    </ul>
  )
}

export default ProfileMenu;