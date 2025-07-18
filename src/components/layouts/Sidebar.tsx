'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { sideAdminLinks, sideLinks } from '@/constants/routes';
import { selectIsAuthenticated, selectUser } from '@/store/selectors/authSelectors';
import { UserRole } from '@/types/enums';
import { useDispatch, useSelector } from 'react-redux';
import { logout } from '@/store/slices/authSlice';
import { CiLogout } from "react-icons/ci";
import { useRouter } from 'next/router';

export default function Sidebar() {
  const dispatch = useDispatch();
  const router = useRouter();

  const pathname = usePathname();
  const isAuthenticated = useSelector(selectIsAuthenticated);
  const user = useSelector(selectUser);
  const handleLogout = (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    dispatch(logout());
    router.push('/login');
  }
  // Loading or unauthenticated
  if (!isAuthenticated) return null;
  const role = user?.role as UserRole;
  const links = role === UserRole.Admin ? sideAdminLinks : sideLinks;

  const isActive = (path: string) =>
    pathname === path ? 'text-main bg-secondary font-bold' : 'text-fourth';

  return (
    <div className="h-screen w-full bg-white relative flex overflow-hidden">
      <div className="h-full w-16 flex flex-col space-y-10 items-center justify-center relative bg-third">
        {links.map(({ title, path, icon: Icon }) => (
          <Link
            key={path}
            href={path}
            className={`flex items-center rounded-lg cursor-pointer hover:text-main hover:bg-fourth hover:duration-300 hover:ease-linear focus:bg-secondary focus:text-main gap-1 ${isActive(path)}`}
          >
            <div className="h-10 w-10 flex items-center justify-center">
              <Icon className="text-inherit" />
            </div>
          </Link>
        ))}
        <button
          key={"logout"}
          onClick={(e) => handleLogout(e)}
          className={`flex items-center rounded-lg cursor-pointer text-dark-third bg-fourth hover:duration-300 hover:ease-linear focus:bg-secondary focus:text-main gap-1}`}
        >
          <div className="h-10 w-10 flex items-center justify-center">
            <CiLogout className="text-xl font-extrabold" />
          </div>
        </button>
      </div>
    </div>
  );
}
