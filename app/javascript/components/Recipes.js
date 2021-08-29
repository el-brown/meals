import React from 'react'

const Recipes = (props) => {
  const { dinner, recipes} = props;
    return (
      <>
      <div>
        <h1>{dinner.name} Recipes</h1>
        <a href={`http://localhost:3000/dinners/${dinner.id}/recipes/new`}>Add</a>
        <a href="/">Back</a>
      </div>
      
        {recipes.map((recipe) => (
          <div key={recipe.id} style={{ backgroundColor:"lightgray", border: "1px solid", margin: "40px", padding:"2px 0 25px 25px"}}>
            <h1><a href={`http://localhost:3000/dinners/${dinner.id}/recipes/${recipe.id}/comments`}>{recipe.name}</a></h1>
            <h3>Stars: {recipe.stars}</h3> 
            <a href={`http://localhost:3000/dinners/${dinner.id}/recipes/${recipe.id}/edit`}>Edit</a>
            <a href={`http://localhost:3000/dinners/${dinner.id}/recipes/${recipe.id}`} data-method="delete">Delete</a>
          
          </div>
      ))};
     </>
    );
  };

export default Recipes

{/* <div key={comment.id} style={{ backgroundColor:"lightblue", border: "1px solid", margin: "40px", padding:"2px 0 25px 25px" }}>
<h1>{comment.title}</h1>
<h3>{comment.body}</h3>
 <a href={`http://localhost:3000/items/${item.id}/comments/${comment.id}/edit`}style={{padding:"7px"}}>Edit</a>
 <a href={`http://localhost:3000/items/${item.id}/comments/${comment.id}`} data-method="delete">Delete</a>
 </div> */}

// const eachRecipe = recipes.map((recipe) => {
//   return (
//     <div>
//       <p>{recipe.name}</p>
//       <p>{recipe.stars}</p>
//     </div>
//   );
// });