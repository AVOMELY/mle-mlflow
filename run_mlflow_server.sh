export MLFLOW_S3_ENDPOINT_URL=https://storage.yandexcloud.net
export AWS_ACCESS_KEY_ID=YCAJE8CKXGh8XKUmcmGHpV2CX
export AWS_SECRET_ACCESS_KEY=YCNQmCkW71PeIVypo2YsF-4eIHhiRBZZN94pztrj
export AWS_BUCKET_NAME=s3-student-mle-20240215-be4e056539

mlflow server \
  --backend-store-uri postgresql://mle_20240215_be4e056539:aa844862a5de4e13ab2320a557df41d7@rc1b-uh7kdmcx67eomesf.mdb.yandexcloud.net:6432/playground_mle_20240215_be4e056539\
    --default-artifact-root s3://s3-student-mle-20240215-be4e056539 \
    --no-serve-artifacts 