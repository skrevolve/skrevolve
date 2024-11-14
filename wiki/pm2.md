# pm2

```javascript
// 3GB 힙 메모리 기준
node_args: "--max-old-space-size=3072",
max_memory_restart: "3584M",  // 약 3.5GB (3GB + 20%)

// 6GB 힙 메모리 기준
node_args: "--max-old-space-size=6144",
max_memory_restart: "7168M",  // 약 7GB (6GB + 20%)

// 12GB 힙 메모리 기준
node_args: "--max-old-space-size=12288",
max_memory_restart: "14336M", // 약 14GB (12GB + 20%
```
