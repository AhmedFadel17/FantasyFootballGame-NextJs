// hooks/useTokenRefresh.ts
import { useEffect, useRef } from 'react';
import { useRefreshTokenMutation } from '@/services/identityApi';
import { useDispatch, useSelector } from 'react-redux';
import { loginSuccess, logout } from '@/store/slices/authSlice';
import { RootState } from '@/store';

export const useTokenRefresh = () => {
  const dispatch = useDispatch();
  const [refreshTokenMutation] = useRefreshTokenMutation();
  const refreshTimeout = useRef<NodeJS.Timeout | null>(null);

  const { token, refreshToken } = useSelector((state: RootState) => state.auth);

  const scheduleTokenRefresh = (expiresIn: number, refreshToken: string) => {
    const refreshTime = expiresIn * 1000 - 60000; // refresh 1 min before expiration

    if (refreshTimeout.current) clearTimeout(refreshTimeout.current);

    refreshTimeout.current = setTimeout(async () => {
      try {
        const response = await refreshTokenMutation({ refreshToken }).unwrap();

        if (response.access_token) {
          dispatch(loginSuccess(response));
          scheduleTokenRefresh(response.expires_in, response.refresh_token);
        } else {
          dispatch(logout());
        }
      } catch (error) {
        console.error("Refresh failed", error);
        dispatch(logout());
      }
    }, refreshTime);
  };

  const cancelScheduledRefresh = () => {
    if (refreshTimeout.current) clearTimeout(refreshTimeout.current);
  };

  return {
    scheduleTokenRefresh,
    cancelScheduledRefresh,
  };
};
