const PersonComponent = (props) => {
  return `
    <div>
      <h1>{props.name}</h1>
      <p>{props.hobbies}</p>
    </div>
  `;
};

const PersonList = (props) => {
  const people = [];
  props.people.forEach((person) => {
    people.push(`
      <li>
        <PersonComponent props={person}>
      </li>
    `);
  });

  return `
    <ul>
      {people}
    </ul>
  `;
};
