# helm upgrade --install code-server ci/helm-chart -f test-values.yaml
# helm upgrade --install gpu-12c ci/helm-chart -f values-test.yaml -n gpu-12c
helm upgrade --install gpu-12a ci/helm-chart -f values-test.yaml -n gpu-12a
helm upgrade --install gpu-12b ci/helm-chart -f values-cpu.yaml -n gpu-12b
helm upgrade --install gpu-1 ci/helm-chart -f values-1gpu.yaml -n gpu-1
helm upgrade --install cs-ridwan ci/helm-chart -f values-test.yaml -n cs-ridwan --create-namespace
helm upgrade --install cs-akhmed ci/helm-chart -f values-akhmed.yaml -n cs-akhmed --create-namespace
helm upgrade --install cs-chip-gpu1 ci/helm-chart -f values-base-docker.yaml -f values-1gpu.yaml -n cs-chip-gpu1 --create-namespace
helm upgrade --install cs-omar ci/helm-chart -f values-1gpux.yaml -n cs-omar --create-namespace