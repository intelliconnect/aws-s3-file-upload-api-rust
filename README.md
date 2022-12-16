# A Generic api to upload files on aws S3

To run the code read [this](https://docs.aws.amazon.com/sdk-for-rust/latest/dg/credentials.html) article or set the below environment variables

```bash

export AWS_ACCESS_KEY_ID=your_aws_id
export AWS_SECRET_ACCESS_KEY=your_aws_secret_key
export AWS_REGION=aws_region
export AWS_S3_BUCKET=s3_bucket_name_(image/file will be uploaded here)
export BUCKET_URL=if you have a public url for your s3 bucket

```

Note: instead of exporting access key, secret key and region env variables you can also save credentials in `~/.aws/credentials` on linux and `%userprofile%\.aws\credentials` on windows


> **Run the project**

if you have set the env variables

    cargo run

or you can run it like below

    AWS_ACCESS_KEY_ID=your_aws_id \
    AWS_SECRET_ACCESS_KEY=your_aws_secret_key \
    AWS_REGION=aws_region \
    AWS_S3_BUCKET=s3_bucket_name \
    BUCKET_URL=public_url_for_s3_bucket_optional \
    cargo run
