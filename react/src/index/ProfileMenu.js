import React from 'react';

const ProfileMenu = props => {
  let classNameChart, classNameDives, clickHandler;

  if (props.data) {
    if (props.data === 'chart') {
      classNameChart = 'active';
    } else if (props.data === 'dives') {
      classNameDives = 'active';
    }
  }
  return (
    <div className='menu-centered'>
      <ul className='menu' onClick={props.onClick}>
        <li className={classNameDives}><a href='#' className='nav-button'>Dives</a></li>
        <li className={classNameChart}><a href='#' className='nav-button'>Chart</a></li>
      </ul>
    </div>
  )
}

export default ProfileMenu;
