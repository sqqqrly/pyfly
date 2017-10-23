# pyfly
A simple flask app with unit tests.

### Why?
A. Learning Concourse CI/CD

### Pipeline
- Make a flask app with a very simple ui.
- Write unit tests.
- Push to GH
- Write a concourse pipeline:
  - Repo is a trigger resource.
  - When the repo changes:
    - Pipeline pulls it.
    - Pipeline runs unit tests.
    - If UTs pass:
      - Pipeline deploys to AWS.
      - Pipeline tests flask API.
    - If UTs fail:
      - Do not deploy
      - Report failure with details

