# List all Containers in all namespaces
* `kubectl get pods --all-namespaces`

* `kubectl get pods --all-namespaces -o jsonpath="{..image}" |tr -s '[[:space:]]' '\n' |sort |uniq -c`

* `kubectl get pods --all-namespaces -o jsonpath="{.items[*].spec.containers[*].image}"`

* `kubectl get pods --all-namespaces -o=jsonpath='{range .items[*]}{"\n"}{.metadata.name}{":\t"}{range .spec.containers[*]}{.image}{", "}{end}{end} | sort`

* `kubectl get pods --all-namespaces -o=jsonpath="{..image}" -l app=nginx`

* `kubectl get pods --namespace kube-system -o jsonpath="{..image}"`

* `kubectl get pods --all-namespaces -o go-template --template="{{range .items}}{{range .spec.containers}}{{.image}} {{end}}{{end}}"`
