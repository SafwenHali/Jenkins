apt-get update
apt-get install -y docker.io 

docker run --rm -d -p 5000:5000 --name node_app node:14 bash -c '
  npm init -y &&
  npm install express &&
  echo "const express = require(\x27express\x27); const app = express(); app.get(\x27/\x27, (req, res) => { res.send(\x27Hello World!\x27); }); app.listen(3000, () => { console.log(\x27Server is running on port 3000\x27); });" > index.js &&
  node index.js
'
sleep 10

curl http://localhost:5000
Started by user admin
Running as SYSTEM
Building in workspace /var/jenkins_home/workspace/BuildAppJob
The recommended git tool is: NONE
using credential 9c88153a-1137-4ff4-bece-2d93cc963c56
 > git rev-parse --resolve-git-dir /var/jenkins_home/workspace/BuildAppJob/.git # timeout=10
Fetching changes from the remote Git repository
 > git config remote.origin.url https://github.com/SafwenHali/Jenkins.git # timeout=10
Fetching upstream changes from https://github.com/SafwenHali/Jenkins.git
 > git --version # timeout=10
 > git --version # 'git version 2.39.2'
using GIT_ASKPASS to set credentials 
 > git fetch --tags --force --progress -- https://github.com/SafwenHali/Jenkins.git +refs/heads/*:refs/remotes/origin/* # timeout=10
 > git rev-parse refs/remotes/origin/master^{commit} # timeout=10
 > git rev-parse origin/master^{commit} # timeout=10
ERROR: Couldn't find any revision to build. Verify the repository and branch configuration for this job.
Finished: FAILURE
