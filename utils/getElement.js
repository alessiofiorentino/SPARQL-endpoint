const get = (selection) => {
  const element = document.querySelector(selection);
  if (element) {
    return element;
  }
  throw new Error(
    `${selection} element not found: please double check selector`
  );
};

export default get;
