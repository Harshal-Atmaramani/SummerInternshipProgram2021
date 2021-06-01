# Different ways of doing the same task

### In

1. VM
2. Instance
3. Windows CMD through SSH

### Ways

1. WINSCP (to transfer dataset) and then write code by creating appropriate files and folders.
2. WINSCP (to transfer dataset and pre-written code) and then running it in there.
3. GitHub Pull (pulling all the files including dataset, .py and .pk1)
4. Inside a empty docker image created on Docker Hub. Pulling it first, then using GitHub pull to get all necessary files.
5. By running a Jupyter NB in VM/Instance/Windows.
6. By running a Jupyter NB in Firefox inside a container.

Total number of ways is the combination of In and Ways i.e. 3 * 6 = 18 ways.
