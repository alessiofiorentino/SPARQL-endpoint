const get = (selection) => {
  const element = document.querySelector(selection);
  if (element) {
    return element;
  }
  throw new Error(`please double check ${selection} selector`);
};

export default get;
