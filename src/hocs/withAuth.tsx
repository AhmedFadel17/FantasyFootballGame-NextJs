'use client';
import { useRouter } from 'next/navigation';
import { useSelector } from 'react-redux';
import { useEffect } from 'react';

const withAuth = (WrappedComponent: any, allowedRoles: string[] = []) => {
  return (props: any) => {
    const router = useRouter();
    const { token, user } = useSelector((state: any) => state.auth);

    useEffect(() => {
      if (!token) {
        router.push('/login');
      } else if (allowedRoles.length && !allowedRoles.includes(user?.role)) {
        router.push('/unauthorized');
      }
    }, [token, user]);

    return token && (!allowedRoles.length || allowedRoles.includes(user?.role)) ? (
      <WrappedComponent {...props} />
    ) : null;
  };
};

export default withAuth;
