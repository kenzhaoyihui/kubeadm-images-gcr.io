# This is a demonstration of how KubeVirt could be displayed in Cockpit

**Note:** This work is a Cockpit pod in _demo shape_ and _not_ for production use.

Due to current limitations, this Cockpit instance is authenticating
against the pod OS (root:), and not against Kubernetes.
Also the wording on the machines page is "host" tuned.

To try this pod with KubeVirt:

1. `./cluster/kubectl.sh create -f manifests/cockpit.json`
2. Open https://192.168.200.2:9091 (9090 is used by master node cockpit)
3. Navigate to Machines page
4. No VM should be shown
5. `./cluster/kubectl.sh create -f cluster/vm.json`
6. Wait a few seconds and the testvm should appear

The long term solution is to come up with a dashboard for VMs
similar to the Kubernetes dashboard.
