const http = require('http');

const PORT = process.env.PORT || 3200;

// Simple in-memory store. Real services would use a database.
const orders = [
  { id: 1, customer: 'Northline Grocers', status: 'shipped', total: 1840.5 },
  { id: 2, customer: 'Harbor Market', status: 'pending', total: 620.0 },
  { id: 3, customer: 'Cedar Foods', status: 'shipped', total: 2310.75 },
];

function json(res, code, body) {
  res.writeHead(code, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify(body));
}

const server = http.createServer((req, res) => {
  const url = new URL(req.url, `http://localhost:${PORT}`);

  if (req.method === 'GET' && url.pathname === '/api/orders') {
    const status = url.searchParams.get('status');
    const result = status ? orders.filter((o) => o.status === status) : orders;
    return json(res, 200, result);
  }

  if (req.method === 'GET' && url.pathname === '/api/orders/summary') {
    const shipped = orders.filter((o) => o.status === 'shipped').length;
    const pending = orders.filter((o) => o.status === 'pending').length;
    const revenue = orders.reduce((sum, o) => sum + o.total, 0);
    return json(res, 200, { shipped, pending, revenue });
  }

  return json(res, 404, { error: 'Not found' });
});

if (require.main === module) {
  server.listen(PORT, () => console.log(`status-service listening on ${PORT}`));
}

module.exports = { server, orders };
