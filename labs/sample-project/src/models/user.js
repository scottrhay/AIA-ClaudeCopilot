/**
 * User model class
 * Represents a user in the system
 */
class User {
    constructor({ id, username, email, createdAt }) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.createdAt = createdAt || new Date().toISOString();
    }

    /**
     * Returns a safe representation of the user (without sensitive data)
     */
    toJSON() {
        return {
            id: this.id,
            username: this.username,
            email: this.email,
            createdAt: this.createdAt
        };
    }

    /**
     * Validates the user data
     * @returns {Object} Object with isValid boolean and errors array
     */
    validate() {
        const errors = [];

        if (!this.username || this.username.length < 3) {
            errors.push('Username must be at least 3 characters');
        }

        if (!this.email || !this.isValidEmail(this.email)) {
            errors.push('Invalid email format');
        }

        return {
            isValid: errors.length === 0,
            errors
        };
    }

    /**
     * Simple email validation
     * @param {string} email
     * @returns {boolean}
     */
    isValidEmail(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }
}

module.exports = User;
