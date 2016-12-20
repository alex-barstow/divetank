import React from 'react';

const ProfileMenu = props => {
  let classNameChart, classNameDives;

  if (props.data) {
    if (props.data === 'chart') {
      classNameChart = 'nav-tab active';
    } else if (props.data === 'dives') {
      classNameDives = 'active';
    }
  }
  return (
    <div className='menu-centered'>
      <ul className='menu' onClick={props.onClick}>
        <li className={classNameDives}><a href='#' className='nav-button'><i className="fa fa-th fa-2x" aria-hidden="true"></i></a></li>
        <li className={classNameChart}><a href='#' className='nav-button'><i className="fa fa-bar-chart fa-2x" aria-hidden="true"></i></a></li>
      </ul>
    </div>
  )
}

export default ProfileMenu;
