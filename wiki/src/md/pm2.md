# pm2


# ecosystem heap memory size
```javascript
// 1GB Heap memory
node_args: "--max-old-space-size=1024",
max_memory_restart: "1228M", // total process 1.2GB (1GB + 20%)

// 3GB Heap memory
node_args: "--max-old-space-size=3072",
max_memory_restart: "3584M",  // total process 3.5GB (3GB + 20%)

// 6GB Heap memory
node_args: "--max-old-space-size=6144",
max_memory_restart: "7168M",  // total process 7GB (6GB + 20%)

// 12GB Heap memory
node_args: "--max-old-space-size=12288",
max_memory_restart: "14336M", // total process 14GB (12GB + 20%)
```


ttttttt
