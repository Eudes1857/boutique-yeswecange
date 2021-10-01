const Pool = require('pg').Pool
const pool = new Pool({
  user: 'eudes',
  host: 'localhost',
  database: 'db_boutique',
  password: '1857',
  port: 5432,
})

const getProducts = (request, response) => {
    pool.query('SELECT * FROM products ORDER BY idproduct ASC', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  const getProductsById = (request, response) => {
    const id = parseInt(request.params.id)
  
    pool.query('SELECT * FROM products WHERE idproduct = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }


  const createProduct = (request, response) => {
    const { name, description, price, instock } = request.body
  
    pool.query('INSERT INTO products (name, description, price, instock) VALUES ($1, $2, $3, $4)', [name, description, price, instock], (error, results) => {
      if (error) {
        throw error
      }
      response.status(201).send(`Product added`)
    })
  }

  const updateProduct = (request, response) => {
    const id = parseInt(request.params.id)
    const { name, description, price, instock } = request.body
  
    pool.query(
      'UPDATE products SET name = $1, description = $2, price = $3, instock = $4 WHERE idproduct = $5',
      [name, description, price, instock, id],
      (error, results) => {
        if (error) {
          throw error
        }
        response.status(200).send(`Product modified with ID: ${id}`)
      }
    )
  }

  const deletProduct = (request, response) => {
    const id = parseInt(request.params.id)
  
    pool.query('DELETE FROM products WHERE idproduct = $1', [id], (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).send(`Product deleted with ID: ${id}`)
    })
  }

  module.exports = {
      getProducts,
      getProductsById,
      createProduct,
      updateProduct,
      deletProduct,
  }