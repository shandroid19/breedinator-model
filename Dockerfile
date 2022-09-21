FROM tensorflow/serving

ENV MODEL_BASE_PATH /models
ENV PORT 8501
ENV MODEL_NAME saved_model

COPY saved_model /models/saved_model

# Fix because base tf_serving_entrypoint.sh does not take $PORT env variable while $PORT is set by Heroku
# CMD is required to run on Heroku
COPY tf_serving_entrypoint.sh /usr/bin/tf_serving_entrypoint.sh
RUN chmod +x /usr/bin/tf_serving_entrypoint.sh
ENTRYPOINT ["/bin/bash"]
CMD ["/usr/bin/tf_serving_entrypoint.sh"]