import React from 'react'

const Dinners = ({dinners}) => {
  const renderDinners = () => {
    return dinners.map((dinner) => {
      return (
        <div style={{border:'1px solid', margin:'40px', padding:'30px'}}>
          <h1><a href={`/dinners/${dinner.id}/recipes`}>{dinner.name}</a></h1>
          <a href={`/dinners/${dinner.id}/edit`}>Edit Name</a>
          <a href={`/dinners/${dinner.id}`} data-method="delete">Delete</a>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>DINNERS!! YAY!</h1>
      <p><a href="/dinners/new">Add Dinner</a></p>
      {renderDinners()}
    </div>

  );
};

export default Dinners