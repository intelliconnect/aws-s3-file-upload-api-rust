# A Generic api to upload files on aws S3

To run the code read [this](https://docs.aws.amazon.com/sdk-for-rust/latest/dg/credentials.html) post or set the below environment variables

```bash

export AWS_ACCESS_KEY_ID=your_aws_id
export AWS_SECRET_ACCESS_KEY=your_aws_secret_key
export AWS_REGION=aws_region
export AWS_S3_BUCKET=s3_bucket_name_(image/file will be uploaded here)

```

Note: instead of exporting env variables you can also save credentials in `~/.aws/credentials` on linux and `%userprofile%\.aws\credentials` on windows


> **Run the project**

if you have set the env variables

    cargo run

or you can run it like below

    AWS_ACCESS_KEY_ID=your_aws_id AWS_SECRET_ACCESS_KEY=your_aws_secret_key AWS_REGION=aws_region AWS_S3_BUCKET=s3_bucket_name cargo run
