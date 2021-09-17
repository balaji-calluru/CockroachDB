$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ProgressPreference = 'SilentlyContinue'
mkdir -p $env:appdata/cockroach
Invoke-WebRequest -Uri https://binaries.cockroachdb.com/cockroach-v21.1.7.windows-6.2-amd64.zip -OutFile cockroach.zip
Expand-Archive -Path cockroach.zip
Copy-Item "cockroach/cockroach-v21.1.7.windows-6.2-amd64/cockroach.exe" -Destination $env:appdata/cockroach
$Env:PATH += ";$env:appdata/cockroach"
