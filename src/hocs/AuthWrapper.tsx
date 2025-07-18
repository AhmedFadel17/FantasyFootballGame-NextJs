// e.g. in Login.tsx or AuthWrapper.tsx

import { useEffect } from 'react';
import { useSelector } from 'react-redux';
import { RootState } from '@/store';
import { useTokenRefresh } from '@/hooks/useTokenRefresh';

export const AuthWrapper = () => {
  const { token, refreshToken } = useSelector((state: RootState) => state.auth);
  const { scheduleTokenRefresh } = useTokenRefresh();

  useEffect(() => {
    if (token && refreshToken) {
      const decoded = JSON.parse(atob(token.split('.')[1]));
      const expiresIn = decoded.exp * 1000 - Date.now();

      if (expiresIn > 0) {
        scheduleTokenRefresh(expiresIn / 1000, refreshToken);
      }
    }
  }, [token, refreshToken]);

  return null;
};
