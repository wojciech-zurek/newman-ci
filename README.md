## Latest Docker image with Newman for GitLab Continuous Integration Pipeline

### Description
This image runs Newman-3.9.3 on latest Node-9.9.0 on Alpine-3.6.

This image does not have an entrypoint so it can be used in GitLab CI Pipeline.

Docker hub url: 
 - [wojciechzurek/newman-ci](https://hub.docker.com/r/wojciechzurek/newman-ci/)

Example .gitlab-ci.yml:

```
...your pipline config...
stages:
  - postman-test

postman-test:
  stage: postman-test
  image: wojciechzurek/newman-ci
  script:
    - newman run path/to/collection.json -e  path/to/environments.json --reporters cli,html --reporter-html-export newman-results.html --color
  artifacts:
    when: always
    paths:
      - newman-results.html
```