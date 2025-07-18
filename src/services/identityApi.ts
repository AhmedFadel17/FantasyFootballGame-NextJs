import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query/react';

const API_URL = process.env.NEXT_PUBLIC_IDENTITY_SERVER;
const CLIENT_ID = process.env.NEXT_PUBLIC_IDENTITY_SERVER_CLIENT_ID!;
const CLIENT_SECRET = process.env.NEXT_PUBLIC_IDENTITY_SERVER_CLIENT_SECRET!;
const DEFAULT_SCOPE = process.env.NEXT_PUBLIC_IDENTITY_SERVER_SCOPE || '';
const DEFAULT_GRANT_TYPE = process.env.NEXT_PUBLIC_IDENTITY_SERVER_GRANT_TYPE || 'password';
const toUrlEncoded = (data: Record<string, any>) =>
    new URLSearchParams(data).toString();

export const identityApi = createApi({
    reducerPath: 'identityApi',
    baseQuery: fetchBaseQuery({
        baseUrl: API_URL,
    }),
    endpoints: (builder) => ({
        login: builder.mutation<any, { username: string; password: string }>({
            query: ({ username, password }) => ({
                url: '/connect/token',
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: new URLSearchParams({
                    username,
                    password,
                    client_id: CLIENT_ID,
                    client_secret: CLIENT_SECRET,
                    scope: DEFAULT_SCOPE,
                    grant_type: DEFAULT_GRANT_TYPE,
                }),
            }),
        }),

        refreshToken: builder.mutation<any, { refreshToken: string }>({
            query: ({ refreshToken }) => ({
                url: '/connect/token',
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: new URLSearchParams({
                    refresh_token: refreshToken,
                    grant_type: 'refresh_token',
                    client_id: CLIENT_ID,
                    client_secret: CLIENT_SECRET,
                }),
            }),
        }),

        register: builder.mutation<any, registerData>(
            {
                query: (data) => ({
                    url: '/api/auth/register',
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json', 
                    },
                    body: {
                        email: data.email,
                        password: data.password,
                        username: data.username,
                        role: 0,
                    },
                }),
                
            }
        ),
    }),
});

export const {
    useLoginMutation,
    useRefreshTokenMutation,
    useRegisterMutation,
} = identityApi;
