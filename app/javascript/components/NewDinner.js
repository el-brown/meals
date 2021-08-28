import React from 'react'

const NewDinner = () => {
    return (
      <div>
        <h1>New Dinner Category</h1>
        <form action="/dinners" method="post">
          <p>Name:</p>
          <input name="dinner[name]" />
          <button type="submit">Add</button>
        </form>
      </div>
    );
};

export default NewDinner