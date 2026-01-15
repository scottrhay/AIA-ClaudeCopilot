const request = require('supertest');
const app = require('../src/index');

describe('Users API', () => {
    describe('GET /api/users', () => {
        it('should return an empty array initially', async () => {
            const response = await request(app)
                .get('/api/users')
                .expect('Content-Type', /json/)
                .expect(200);

            expect(response.body).toHaveProperty('count');
            expect(response.body).toHaveProperty('users');
            expect(Array.isArray(response.body.users)).toBe(true);
        });
    });

    describe('POST /api/users', () => {
        it('should create a new user with valid data', async () => {
            const userData = {
                username: 'testuser',
                email: 'test@example.com',
                password: 'password123'
            };

            const response = await request(app)
                .post('/api/users')
                .send(userData)
                .expect('Content-Type', /json/)
                .expect(201);

            expect(response.body).toHaveProperty('message', 'User created successfully');
            expect(response.body.user).toHaveProperty('username', userData.username);
            expect(response.body.user).toHaveProperty('email', userData.email);
            expect(response.body.user).toHaveProperty('id');
        });

        // TODO: Add tests for input validation
        // These tests should fail until validation is implemented in Exercise 2

        it.skip('should reject invalid email format', async () => {
            const userData = {
                username: 'testuser',
                email: 'invalid-email',
                password: 'password123'
            };

            const response = await request(app)
                .post('/api/users')
                .send(userData)
                .expect('Content-Type', /json/)
                .expect(400);

            expect(response.body).toHaveProperty('error');
        });

        it.skip('should reject username shorter than 3 characters', async () => {
            const userData = {
                username: 'ab',
                email: 'test@example.com',
                password: 'password123'
            };

            const response = await request(app)
                .post('/api/users')
                .send(userData)
                .expect('Content-Type', /json/)
                .expect(400);

            expect(response.body).toHaveProperty('error');
        });
    });

    describe('GET /api/users/:id', () => {
        it('should return 404 for non-existent user', async () => {
            const response = await request(app)
                .get('/api/users/99999')
                .expect('Content-Type', /json/)
                .expect(404);

            expect(response.body).toHaveProperty('error', 'Not Found');
        });
    });

    describe('DELETE /api/users/:id', () => {
        it('should return 404 for non-existent user', async () => {
            const response = await request(app)
                .delete('/api/users/99999')
                .expect('Content-Type', /json/)
                .expect(404);

            expect(response.body).toHaveProperty('error', 'Not Found');
        });
    });
});

describe('Health Check', () => {
    it('should return healthy status', async () => {
        const response = await request(app)
            .get('/api/health')
            .expect('Content-Type', /json/)
            .expect(200);

        expect(response.body).toHaveProperty('status', 'healthy');
        expect(response.body).toHaveProperty('timestamp');
        expect(response.body).toHaveProperty('uptime');
    });
});

describe('Root Endpoint', () => {
    it('should return API information', async () => {
        const response = await request(app)
            .get('/')
            .expect('Content-Type', /json/)
            .expect(200);

        expect(response.body).toHaveProperty('message', 'Sample API Project');
        expect(response.body).toHaveProperty('version');
        expect(response.body).toHaveProperty('endpoints');
    });
});
