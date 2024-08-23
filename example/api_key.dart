const mistralApiKey = String.fromEnvironment(
  // used to run from CI
  'EXAMPLES_MISTRAL_API_KEY',
  defaultValue: 'your api key here',
);
