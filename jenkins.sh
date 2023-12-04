apt-get update
apt-get install -y docker.io 

docker run --rm -d -p 5000:5000 --name node_app node:14 bash -c '
  npm init -y &&
  npm install express &&
  echo "const express = require(\x27express\x27); const app = express(); app.get(\x27/\x27, (req, res) => { res.send(\x27Hello World!\x27); }); app.listen(3000, () => { console.log(\x27Server is running on port 3000\x27); });" > index.js &&
  node index.js
'
sleep 15

curl http://localhost:5000
