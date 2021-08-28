import React from 'react'

const EditDinner = (props) => {
  const { dinner } = props;
  return (
    <div>
      <h1>Edit {dinner.name}</h1>
      <form action={`/dinners/${dinner.id}`} method="post">
      <input type="hidden" name="_method" value="patch" />
        <p>Name</p>
        <input defaultValue={dinner.name} name="dinner[name]" />
        <button type="submit">Update</button>
      </form>
      <a href="/">Back</a>
    </div>
  )
}

export default EditDinner
