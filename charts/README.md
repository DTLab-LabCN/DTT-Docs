
```
export tag=0.0.1
docker build -t idlaborg/dtt-docs:$tag .
docker push idlaborg/dtt-docs:$tag
cd charts
kinterop
helm upgrade dtt-docs . \
    --namespace dtt-dev \
    --create-namespace --install
cd ..

```
```
helm upgrade dtt-docs . \
    --namespace dtt-dev \
    --create-namespace --install

```