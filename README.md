# System Monitor: Bash Automation Project

A simple Bash script that collects basic system metrics:
- CPU load
- Memory and swap usage
- Disk utilization
- Top 5 processes by memory

Logs are saved in `log/system_status.log`.

## Run manually
```bash
chmod +x monitor.sh
./monitor.sh
cat log/system_status.log
```
