tensorflow_model_server --port=8500 --rest_api_port=${PORT} \
  --model_name=${MODEL_NAME} --model_base_path=${MODEL_BASE_PATH}/${MODEL_NAME}
# tensorflow_model_server --port=8500 --rest_api_port="${PORT}" --model_name="${MODEL_NAME}" "$@"
# docker run -p 8501:8501 --mount type=bind,source=F:/breed-classifier/flask/saved_model,target=/models/saved_model -e MODEL_NAME=saved_model -t tensorflow/serving

