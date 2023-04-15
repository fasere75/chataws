# ChatAWS Plugin

The ChatAWS Plugin is an open-source Flask web application that allows users to easily create AWS Lambda functions and create websites in Amazon S3 using ChatGPT.

![ChatAWS Plugin example of create a Lambda Function that generates random numbers](chat_aws_random_example.png)

**Features**

- Create AWS Python Lambda functions with or without dependencies.
- Create Static websites using Amazon S3.

## Prerequisites

To use this plugin, you will need the following:

- Docker
- An AWS account with access to S3 and Lambda services

## Installation

Clone the repository:

```bash
git clone https://github.com/banjtheman/chataws.git
```

Change to the repository directory:

```bash
cd chataws
```

Build the Docker image:

```bash
docker build . -t aws_chatgpt_plugin
```

## Usage

Run the Docker container with the required environment variables:

**Note:** You must create a Lambda Role for the app to use, as well as provide an S3 public that allows public objects.

```bash
docker run -p 5000:5000 \
-e AWS_DEFAULT_REGION=<your_aws_region> \
-e AWS_ACCESS_KEY_ID=<your_aws_access_key> \
-e AWS_SECRET_ACCESS_KEY=<your_aws_secret_key> \
-e LAMBDA_ROLE=<your_lambda_role_arn> \
-e S3_BUCKET=<your_s3_bucket_name> \
aws_chatgpt_plugin
```

Once up you can follow the instructions [here](https://platform.openai.com/docs/plugins/getting-started/running-a-plugin) to run the plugin within ChatGPT,


## Example Prompts

You can test the plugin with some of these prompts:

* Use the ChatAWS Plugin to create a Lambda function that generates a random number between a min and a max number input from a user
* Use the ChatAWS Plugin to create a website in that invokes the Lambda Function and displays the random number each time a button is pressed, and lets the user change the min and max values
* Use the ChatAWS Plugin to create a Lambda function that uses the VADER Sentiment Analysis library to perform sentiment analysis on input text
* Use the ChatAWS Plugin to create a website that invokes the sentiment analysis Lambda Function on an input string from a text box.

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please create an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Support

If you need help or have any questions, please feel free to open an issue or contact the maintainer.
