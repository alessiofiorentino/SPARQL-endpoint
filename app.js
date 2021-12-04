import get from './utils/getElement.js';
import launchIDLV from './utils/launchIDLV.js';

const form = get('.form');
const queryContainer = get('.form-textarea');

launchIDLV();

form.addEventListener('submit', (e) => {
  e.preventDefault();
  const query = queryContainer.value;

  // give the query as input for DaRLing
  // launch idlv with abox+tbox+query
  launchIDLV();
  // show output
});
