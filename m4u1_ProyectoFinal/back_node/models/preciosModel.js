var pool = require('./bd');

async function getPrecios() {
    var query = 'select * from precios';
    var rows = await pool.query(query);
    return rows;
}

async function insertPrecios(obj) {
    try {
        var query = "insert into precios set ?";
        var rows = await pool.query(query, [obj])
        return rows;
    } catch (error) {
        console.log(error);
        throw error;
    }
}

async function deletePreciosById(id_producto) {
    var query = 'delete from precios where id_producto = ?';
    var rows = await pool.query(query, [id_producto]);
    return rows;
}

async function getPreciosById(id_producto) {
    var query = 'select * from precios where id_producto = ?';
    var rows = await pool.query(query, [id_producto]);
    return rows[0];
}


async function editarPrecioById(obj, id_producto) {
    try {
        var query = 'update precios set ? where id_producto=?';
        var rows = await pool.query(query, [obj, id_producto]);
        return rows;
    } catch (error) {
        throw error;
    }
};


module.exports = { getPrecios, insertPrecios, deletePreciosById, getPreciosById, editarPrecioById }