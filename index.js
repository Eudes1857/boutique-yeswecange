const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000

const data = require('./config')

app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)
app.get('/', (request, response) => {
    response.json({ info: 'Building a basic API for a shop' })
  })

  app.listen(port, () => {
    console.log(`Application running on port ${port}.`)
  })

  app.get('/api/products', data.getProducts)
  app.get('/api/products/:id', data.getProductsById)
  app.post('/api/products', data.createProduct)
  app.put('/api/products/:id', data.updateProduct)
  app.delete('/api/products/:id', data.deletProduct)