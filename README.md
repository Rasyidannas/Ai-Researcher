# Jupyter Notebook with Conda

## Access

Enter the container:
```bash
docker compose exec --user rasyid jupyter bash
```

## Conda Environment

Activate the pre-built HuggingFaceBook environment:
```bash
conda activate HuggingFaceBook
```

Or use it directly without activation:
```bash
conda run -n HuggingFaceBook python script.py
```

## Create New Environment

```bash
conda create -n myenv python=3.11
conda activate myenv
conda install pandas numpy
```

## Access from Other Devices

Open in browser:
```
http://<your-ip>:8888
```
Token: `mysecret`

## Files

Files created in `~/work/` inside the container sync to `./work/` on the host.

## Rebuild

```bash
docker compose down -v && docker compose up -d --build
```
