# Flink Python Job Submission

```
docker run -v $(pwd)/example-job:/job -e PYTHON_ENTRY_FILE=basic_operation.py -e JOB_MANAGER=host.docker.internal:8081 k2sebeom/flink-python-job-submission:latest
```