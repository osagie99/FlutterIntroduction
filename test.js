function isSelector(selector) {
  try {
    document.querySelector(selector);

    return true;
  } catch (e) {
    return false;
  }
}
