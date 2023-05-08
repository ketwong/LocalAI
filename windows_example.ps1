# model = ggml-gpt4all-j.bin
# wsl2 
# docker compose command from instruction
# 16gb and 8cpu

$res = Invoke-WebRequest -Uri "http://localhost:8080/v1/completions" -ContentType "application/json" -Method POST -Body '{
     "model": "ggml-gpt4all-j.bin",
     "prompt": "write me a short peom about a water bottle",
     "temperature": 0.7
   }'

$res.Content

$jsonRes = $res.Content | ConvertFrom-Json
$jsonRes.choices[0].text


