FROM k8s.gcr.io/kustomize/kustomize:v3.8.7 AS kustomize

FROM dtzar/helm-kubectl:3.7.1

COPY --from=kustomize /app/kustomize /usr/bin/

RUN apk add --no-cache gomplate gettext
