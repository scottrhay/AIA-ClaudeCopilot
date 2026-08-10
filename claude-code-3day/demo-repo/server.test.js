const test = require('node:test');
const assert = require('node:assert');
const { server } = require('./server');

function get(path) {
  return new Promise((resolve) => {
    server.listen(0, () => {
      const port = server.address().port;
      require('node:http').get(`http://localhost:${port}${path}`, (res) => {
        let body = '';
        res.on('data', (c) => (body += c));
        res.on('end', () => {
          server.close();
          resolve({ status: res.statusCode, body: JSON.parse(body) });
        });
      });
    });
  });
}

test('GET /api/orders returns all orders', async () => {
  const res = await get('/api/orders');
  assert.strictEqual(res.status, 200);
  assert.strictEqual(res.body.length, 3);
});

test('GET /api/orders?status=shipped filters', async () => {
  const res = await get('/api/orders?status=shipped');
  assert.strictEqual(res.body.length, 2);
});

test('GET /api/orders/summary totals revenue', async () => {
  const res = await get('/api/orders/summary');
  assert.strictEqual(res.body.shipped, 2);
  assert.ok(res.body.revenue > 4000);
});
