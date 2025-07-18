type loginData = {
    grant_type: string,
    username: string,
    password: string,
    client_id: string,
    client_secret: string,
    scope: string,
    email: string,
    remember_me: boolean
}
type registerData = {
    email: string,
    username: string,
    role: number,
    password: string,
    confirmPassword: string
}

type ApiError = {
    status: number;
    message:string,
    data?: {
        code: string;
        description: string;
    }[]
};
type LoginError = {
    message: string;
    response?: {
        data: {
            error: string;
            error_description?: string
        }
    };
};
