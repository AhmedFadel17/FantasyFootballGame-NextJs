import Cookies from 'js-cookie';
import { store } from '@/store';
import { loginSuccess, logout } from '@/store/slices/authSlice';
import { identityApi } from '@/services/identityApi';

let refreshTimer: ReturnType<typeof setTimeout> | null = null;

export const scheduleTokenRefresh = (expiresAt: number, refreshToken: string) => {
  if (refreshTimer) clearTimeout(refreshTimer);

  const timeout = expiresAt - Date.now() - 60 * 1000; 

  if (timeout <= 0 || !refreshToken) return;

  refreshTimer = setTimeout(async () => {
    try {
      const result = await store.dispatch(
        identityApi.endpoints.refreshToken.initiate({ refreshToken })
      );

      if ('data' in result && result.data.access_token) {
        const expiresIn = result.data.expires_in;
        const newExpiresAt = Date.now() + expiresIn * 1000;

        store.dispatch(loginSuccess({
          ...result.data
        }));

        scheduleTokenRefresh(newExpiresAt, result.data.refresh_token);
      } else {
        store.dispatch(logout());
      }
    } catch (err) {
      console.error("Token refresh failed", err);
      store.dispatch(logout());
    }
  }, timeout);
};
