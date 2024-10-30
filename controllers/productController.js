import db from '../config/database.js';

const productController = {
    getAllProducts: (req, res) => {
        const query = 'SELECT * FROM products';
        db.query(query, (err, results) => {
            if (err) {
                return res.status(500).json({
                    status: "error",
                    message: "Error fetching products",
                    error: err
                });
            }
            res.json({
                status: "success",
                data: results
            });
        });
    },

    getProductById: (req, res) => {
        const query = 'SELECT * FROM products WHERE id = ?';
        db.query(query, [req.params.id], (err, results) => {
            if (err) {
                return res.status(500).json({
                    status: "error",
                    message: "Error fetching product",
                    error: err
                });
            }
            if (results.length === 0) {
                return res.status(404).json({
                    status: "error",
                    message: "Product not found"
                });
            }
            res.json({
                status: "success",
                data: results[0]
            });
        });
    },

    createProduct: (req, res) => {
        const { name, price, stock, category, description, brand } = req.body;
        const query = 'INSERT INTO products (name, price, stock, category, description, brand) VALUES (?, ?, ?, ?, ?, ?)';
        
        db.query(query, [name, price, stock, category, description, brand], (err, result) => {
            if (err) {
                return res.status(500).json({
                    status: "error",
                    message: "Error creating product",
                    error: err
                });
            }
            
            const newProduct = {
                id: result.insertId,
                name,
                price,
                stock,
                category,
                description,
                brand
            };
            
            res.status(201).json({
                status: "success",
                data: newProduct
            });
        });
    },

    updateProduct: (req, res) => {
        const { name, price, stock, category, description, brand } = req.body;
        const query = 'UPDATE products SET name = ?, price = ?, stock = ?, category = ?, description = ?, brand = ? WHERE id = ?';
        
        db.query(query, [name, price, stock, category, description, brand, req.params.id], (err, result) => {
            if (err) {
                return res.status(500).json({
                    status: "error",
                    message: "Error updating product",
                    error: err
                });
            }
            
            if (result.affectedRows === 0) {
                return res.status(404).json({
                    status: "error",
                    message: "Product not found"
                });
            }
            
            res.json({
                status: "success",
                message: "Product updated successfully"
            });
        });
    },

    deleteProduct: (req, res) => {
        const query = 'DELETE FROM products WHERE id = ?';
        
        db.query(query, [req.params.id], (err, result) => {
            if (err) {
                return res.status(500).json({
                    status: "error",
                    message: "Error deleting product",
                    error: err
                });
            }
            
            if (result.affectedRows === 0) {
                return res.status(404).json({
                    status: "error",
                    message: "Product not found"
                });
            }
            
            res.json({
                status: "success",
                message: "Product deleted successfully"
            });
        });
    }
};

export default productController;