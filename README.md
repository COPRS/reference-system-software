# Install the chart on minikube 
https://docs.bitnami.com/tutorials/create-your-first-helm-chart/

# Package the chart to deploy it to artifactory 
```
helm package mychart
```
# Push to the repo
curl -u<USERNAME>:<PASSWORD> -T <PATH_TO_FILE> "https://artifactory.coprs.esa-copernicus.eu/artifactory/abc-helm-local/<TARGET_FILE_PATH>"

ex: curl -uXXX:XXX -T mychart-0.1.0.tgz "https://artifactory.coprs.esa-copernicus.eu/artifactory/abc-helm-local/mychart-0.1.0.tgz"
# Connect to the repo 

helm repo add abc-helm-virtual https://artifactory.coprs.esa-copernicus.eu:443/artifactory/abc-helm-virtual/ --username=XXX --password=XXX
helm repo update
# Deploy helm chart 

helm install abc-helm-virtual/mychart -n helm-exemple --create-namespace --generate-name