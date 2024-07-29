echo ("Initializing cluser ......"
sudo kubeadm init

echo ("creating the .kube directory to pull the /etc/kubernetes/admin.conf configuration in ~/.kube/config")
mkdir -p ~/.kube
sudo cp -i /etc/kubernetes/admin.conf ~/.kube/config
echo ("changing the ownership of the file to the current user $USER")
sudo chown $(id -u):$(id -g) ~/.kube/config
echo ("check the config file ownership")
ls -l ~/.kube/config

echo ("now check kubectl access to the cluster...")
kubectl get node

