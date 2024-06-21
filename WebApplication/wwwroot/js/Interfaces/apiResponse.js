class User {
    constructor(id, name, email, password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }
}

class Token {
    constructor(accessToken, expiresIn, tokenType) {
        this.accessToken = accessToken;
        this.expiresIn = expiresIn;
        this.tokenType = tokenType;
    }
}

class ApiResponse {
    constructor(user, token) {
        this.user = user;
        this.token = token;
    }
}
