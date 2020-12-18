kubectl create -f job/bk_init.yaml
kubectl create -f service/bookkeeper.yaml
kubectl create -f statefulset/bookkeeper.yaml