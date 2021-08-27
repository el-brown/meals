import React from 'react'

const Dinners = ({dinners}) => {
  const renderDinners = () => {
    return dinners.map((dinner) => {
      return (
        <div style={{border:'1px solid', margin:'20px', padding:'20px'}}>
          <h1>{dinner.name}</h1>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>DINNERS!! YAY!</h1>
      {renderDinners()}
    </div>

  );
};

export default Dinners