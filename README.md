Lambda Serverless CI Setup Example
==================================
A sample repository to demonstrate Lambda with the Serverless framework GitLab CI configuration for testing and deployment.


## Prerequisites

- [Nodejs v4.3+](https://nodejs.org/)
- [Serverless](https://serverless.com/)
- [Setup your GitLab repository](https://gitlab.com/)
- [Have your AWS credentials to hand](https://serverless.com/framework/docs/providers/aws/guide/credentials/)

## Installation

Install npm dependancies:
```
make install
```

Test locally:
```
make test
```

Add `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` as secret variables on GitLab

To Deploy to staging simply push master to GitLab to trigger the CI pipeline.

## License

Public domain – do whatever you feel like with it!
