import { RootState } from '@/store';

export const selectIsAuthenticated = (state: RootState) => !!state.auth.isAuthenticated;
export const selectAuthToken = (state: RootState) => state.auth.token;
export const selectUser = (state: RootState) => state.auth.user;