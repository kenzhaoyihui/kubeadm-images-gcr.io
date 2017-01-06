#!/bin/bash
#Author: kenzhaoyihui
#Func: Pull all need images
#Date: 2017-01-06
#images = {kube-discovery-amd64:latest kube-scheduler-amd64:latest kube-controller-manager-amd64:latest kube-dnsmasq-amd64:latest etcd-amd64:latest pause-amd64:latest exechealthz-amd64:latest kube-apiserver-amd64:latest kubedns-amd64:latest kube-proxy-amd64:latest dnsmasq-metrics-amd64:latest kubernetes-dashboard-amd64:latest weave-kube:latest weave-npc:latest}

for ImageName in kube-discovery-amd64 kube-scheduler-amd64 kube-controller-manager-amd64 kube-dnsmasq-amd64 etcd-amd64 pause-amd64 exechealthz-amd64 kube-apiserver-amd64 kubedns-amd64 kube-proxy-amd64 dnsmasq-metrics-amd64 kubernetes-dashboard-amd64 weave-kube weave-npc
do
   docker pull zhaoyihui/$ImageName
done

docker tag zhaoyihui/kube-discovery-amd64                   gcr.io/google_containers/kube-discovery-amd64:1.0 
docker tag zhaoyihui/kube-scheduler-amd64                   gcr.io/google_containers/kube-scheduler-amd64:v1.5.1
docker tag zhaoyihui/kube-controller-manager-amd64          gcr.io/google_containers/kube-controller-manager-amd64:v1.5.1
docker tag zhaoyihui/kube-dnsmasq-amd64                     gcr.io/google_containers/kube-dnsmasq-amd64:1.4
docker tag zhaoyihui/etcd-amd64                             gcr.io/google_containers/etcd-amd64:3.0.14-kubeadm
docker tag zhaoyihui/pause-amd64                            gcr.io/google_containers/pause-amd64:3.0
docker tag zhaoyihui/exechealthz-amd64                      gcr.io/google_containers/exechealthz-amd64:v1.2.0
docker tag zhaoyihui/kube-apiserver-amd64                   gcr.io/google_containers/kube-apiserver-amd64:v1.5.1
docker tag zhaoyihui/kubedns-amd64                          gcr.io/google_containers/kubedns-amd64:1.9
docker tag zhaoyihui/kube-proxy-amd64                       gcr.io/google_containers/kube-proxy-amd64:v1.5.1
docker tag zhaoyihui/dnsmasq-metrics-amd64                  gcr.io/google_containers/dnsmasq-metrics-amd64:1.0
docker tag zhaoyihui/kubernetes-dashboard-amd64             gcr.io/google_containers/kubernetes-dashboard-amd64:v1.5.0
docker tag zhaoyihui/weave-kube                             weaveworks/weave-kube:1.8.1
docker tag zhaoyihui/weave-npc                              weaveworks/weave-npc:1.8.1


for ImageName in kube-discovery-amd64 kube-scheduler-amd64 kube-controller-manager-amd64 kube-dnsmasq-amd64 etcd-amd64 pause-amd64 exechealthz-amd64 kube-apiserver-amd64 kubedns-amd64 kube-proxy-amd64 dnsmasq-metrics-amd64 kubernetes-dashboard-amd64 weave-kube weave-npc
do
   docker rmi zhaoyihui/$ImageName
done

