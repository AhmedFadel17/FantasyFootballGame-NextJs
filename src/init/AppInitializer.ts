import Cookies from 'js-cookie';
import { useEffect } from 'react';
import { useDispatch } from 'react-redux';
import { loginSuccess } from '@/store/slices/authSlice';
import { scheduleTokenRefresh } from '@/utils/tokenRefresher';
import { jwtDecode } from 'jwt-decode';

const AppInitializer = () => {
  const dispatch = useDispatch();

  useEffect(() => {
    const token = Cookies.get('token');
    const refreshToken = Cookies.get('refresh_token');

    if (token && refreshToken) {
      const decoded = jwtDecode<any>(token);
      const exp = decoded.exp ? decoded.exp * 1000 : Date.now() + 3600 * 1000;

      dispatch(loginSuccess({
        access_token: token,
        refresh_token: refreshToken,
        expires_in: Math.floor((exp - Date.now()) / 1000),
        rememberMe: true,
      }));

      scheduleTokenRefresh(exp, refreshToken);
    }
  }, []);

  return null;
};

export default AppInitializer;
