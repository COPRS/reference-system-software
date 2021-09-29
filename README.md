# Install the chart on minikube 
https://docs.bitnami.com/tutorials/create-your-first-helm-chart/

```
helm install exemple-chart --dry-run --debug ./mychart --namespace exemple --create-namespace
```


# Package the chart to deploy it to artifactory 
```
helm package ./mychart
```

# Connect to the repo 
https://artifactory.coprs.esa-copernicus.eu:443/artifactory/abc-helm-virtual/

helm repo add abc-helm-virtual https://artifactory.coprs.esa-copernicus.eu:443/artifactory/abc-helm-virtual/ --username=XXX --password=XXX
helm repo update

# Push to the repo
helm chart save mychart/ localhost:5000/myrepo/mychart:2.7.0
helm chart push localhost:5000/myrepo/mychart:2.7.0
helm chart remove localhost:5000/myrepo/mychart:2.7.0