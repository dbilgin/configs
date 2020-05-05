module.exports = {
  root: true,
  extends: '@react-native-community',
  env: {
    jest: true,
  },
  globals: {
    renderWithReactIntl: true,
    renderWithReactIntlAndInjectedIntl: true,
    renderWithRedux: true,
    renderWithProviders: true,
  },
  parser: '@typescript-eslint/parser',
  rules: {
    'react-native/no-inline-styles': 0,
  },
};
