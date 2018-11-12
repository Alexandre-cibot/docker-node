const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  let dirtyDate = Date();
  let date = dirtyDate.slice(0, dirtyDate.indexOf("G"))
  console.log(`From ${req.rawHeaders[1]} ${req.method} ${req.url} at ${date}`)
 res.send('Hello World!')
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))