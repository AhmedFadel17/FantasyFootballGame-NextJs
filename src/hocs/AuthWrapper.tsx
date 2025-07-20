import { useEffect } from 'react';
import { useSelector } from 'react-redux';
import { RootState } from '@/store';
import { useRouter } from 'next/router';
import { useTokenRefresh } from '@/hooks/useTokenRefresh';
import React from 'react';

interface AuthWrapperProps {
  children: React.ReactNode;
}

export const AuthWrapper: React.FC<AuthWrapperProps> = ({ children }) => {
  const { token, refreshToken } = useSelector((state: RootState) => state.auth);
  const { scheduleTokenRefresh } = useTokenRefresh();
  const router = useRouter();

  useEffect(() => {
    if (!token) {
      router.replace('/login'); // Redirect to login if not authenticated
    } else if (token && refreshToken) {
      const decoded = JSON.parse(atob(token.split('.')[1]));
      const expiresIn = decoded.exp * 1000 - Date.now();
      if (expiresIn > 0) {
        scheduleTokenRefresh(expiresIn / 1000, refreshToken);
      }
    }
  }, [token, refreshToken, router, scheduleTokenRefresh]);

  if (!token) {
    return null; // Optionally, show a loading spinner here
  }

  return <>{children}</>;
};
