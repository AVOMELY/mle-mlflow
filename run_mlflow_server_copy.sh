# Проверка наличия файла .env и загрузка переменных окружения 
if [ -f .env ]; then 
    export $(cat .env | grep -v '#' | sed 's/\r$//' | awk '/=/ {print $1}') 
fi 
 
echo $AWS_ACCESS_KEY_ID 
echo $AWS_SECRET_ACCESS_KEY 
echo $S3_BUCKET_NAME 
echo $DB_DESTINATION_USER

# Запуск сервера MLflow с использованием переменных окружения 
mlflow server \
  --backend-store-uri postgresql://${DB_DESTINATION_USER}:${DB_DESTINATION_PASSWORD}@${DB_DESTINATION_HOST}:${DB_DESTINATION_PORT}/${DB_DESTINATION_NAME}\
  --default-artifact-root s3://${S3_BUCKET_NAME}\
  --no-serve-artifacts 