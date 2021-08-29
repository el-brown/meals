import React from 'react'

const Recipes = (props) => {
  const { dinners, recipes } = props
  return (
    <div>
      <h1>{dinners.id} Recipes</h1>
    </div>
  );
};

export default Recipes