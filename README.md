# K3S / K8S Orphaned Pod Cleaner

> ⚠️ USE AT OWN RISK!

Only use this if you know what you are doing.

Please read the content of the [k3s-opc.sh](./k3s-opc.sh) to see what it does.

## Credit and Context

Credits to: <https://github.com/longhorn/longhorn/issues/3207#issuecomment-1384327443> => [@alexnederlof](https://github.com/alexnederlof)

## Usage

Paramters:

- `-v` or `--verbose`
- `--debug`

```bash
bash <(curl -s https://raw.githubusercontent.com/BrutalBirdie/k3s-orphaned-pod-cleaner/master/k3s-opc.sh)
```

You can add the parameters like this:

```bash
bash <(curl -s https://raw.githubusercontent.com/BrutalBirdie/k3s-orphaned-pod-cleaner/master/k3s-opc.sh) --debug
```
