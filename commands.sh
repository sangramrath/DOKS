# Edit the ingress-nginx-controller service, for example
kubectl edit svc ingress-nginx-controller -n ingress-nginx

# Add the following under metadata > annotations
metadata:
  annotations:
    service.beta.kubernetes.io/do-loadbalancer-hostname: "domain1.in"
    service.beta.kubernetes.io/do-loadbalancer-hostname: "domain2.in"

# Eventually only 1 domain will remain, but this works in completing the ACME challenge. I tried this a few times.
    
