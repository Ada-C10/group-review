import React from 'react';

const Box = (props) => {
  return (
    <div>
      <p onClick={props.onBoxClick}>{props.text}</p>
    </div>
  );
};

export default Box;
