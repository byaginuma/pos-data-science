# -- Building the Images

docker build \
  -f base.Dockerfile \
  -t beayag/trabalho-spark-base .

docker push beayag/trabalho-spark-base

docker build \
  -f spark-master.Dockerfile \
  -t beayag/trabalho-spark-master .

docker push beayag/trabalho-spark-master

docker build \
  -f spark-worker.Dockerfile \
  -t beayag/trabalho-spark-worker .

docker push beayag/trabalho-spark-worker

docker build \
  -f jupyter.Dockerfile \
  -t beayag/trabalho-jupyter-s3 .

docker push beayag/trabalho-jupyter-s3