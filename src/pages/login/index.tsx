import { useForm } from "react-hook-form";
import * as yup from "yup";
import { yupResolver } from "@hookform/resolvers/yup";
import { ReactElement } from 'react';
import { appConfigs } from '@/constants/configs';
import Image from 'next/image';
import { useDispatch } from 'react-redux';
import authService from '@/services/authService';
import { loginSuccess } from '@/store/slices/authSlice';
import { useRouter } from 'next/navigation';
import { usePageLoader } from '@/hooks/usePageLoader';
import PageLoader from '@/components/Loader';
import { showLoginFormErrors, showSuccess, showError, showLoading, dismissToast } from '@/utils/toastUtils';
import { useLoginMutation } from '@/services/identityApi';
import { error } from "console";
import { scheduleTokenRefresh } from "@/utils/tokenRefresher";

const schema = yup.object().shape({
  username: yup.string().required(),
  password: yup.string().min(6).required(),
  remember: yup.boolean(),
});

export default function LoginPage() {
  const dispatch = useDispatch();
  const router = useRouter();
  const { isLoading, showLoader, hideLoader } = usePageLoader();
  const [loginUser] = useLoginMutation();

  const { register, handleSubmit, formState: { errors } } = useForm({
    resolver: yupResolver(schema),
  });

  const onSubmit = async (data: any) => {
    const toastId = showLoading('logging...');
    showLoader();
    try {
      const res = await loginUser(data).unwrap();
      dispatch(loginSuccess({ ...res, rememberMe: data.remember }));
      const expiresAt = Date.now() + res.expires_in * 1000;
      scheduleTokenRefresh(expiresAt, res.refresh_token);
      showSuccess('Login successful!');
      router.push('/dashboard');
    } catch (err: any) {
      console.log(err)
      showError(err?.error || err?.data?.error_description);
    }
    finally {
      dismissToast(toastId);
      hideLoader();
    }
  };

  return (
    <>
      <div className="min-h-screen flex items-stretch text-white ">
        <div className="lg:flex w-1/2 hidden bg-main bg-no-repeat bg-cover relative items-center bg-[url(/main/banner.jpg)]">
          <div className="absolute bg-black opacity-60 inset-0 z-0"></div>
          <div className="w-full px-24 z-10">
            <h1 className="text-5xl font-bold text-left tracking-wide">Build Your Dream Team. <br />
              Rule the Fantasy League.</h1>
            <p className="text-3xl my-4">Join millions of LaLiga fans and turn matchdays into victories. Pick your squad, compete with friends, and feel every goal.</p>
          </div>
          <div className="bottom-0 absolute p-4 text-center right-0 left-0 flex justify-center space-x-4">
            <span>
              <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z" /></svg>
            </span>
            <span>
              <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z" /></svg>
            </span>
            <span>
              <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z" /></svg>
            </span>
          </div>
        </div>
        <div className="lg:w-1/2 w-full flex items-center justify-center text-center md:px-16 px-0 z-0 bg-secondary" >
          <div className="absolute lg:hidden z-10 inset-0 bg-secondary bg-no-repeat bg-cover items-center">
            <div className="absolute bg-black opacity-60 inset-0 z-0"></div>
          </div>
          <div className="w-full py-6 z-20">
            <div className='h1 text-center justify-center flex items-center'>
              <Image src={appConfigs.logo} width={50} height={100} alt='' />
              <h1 className={`text-xl font-bold text-main`}>{appConfigs.appName}</h1>
            </div>
            <div className="py-6 space-x-2">
              <span className="w-10 h-10 items-center justify-center inline-flex rounded-full font-bold text-lg border-2 border-white">f</span>
              <span className="w-10 h-10 items-center justify-center inline-flex rounded-full font-bold text-lg border-2 border-white">G+</span>
              <span className="w-10 h-10 items-center justify-center inline-flex rounded-full font-bold text-lg border-2 border-white">in</span>
            </div>
            <p className="text-gray-100">
              or use email your account
            </p>
            <form onSubmit={handleSubmit(onSubmit)} className="sm:w-2/3 w-full px-4 lg:px-0 mx-auto">
              <div className="pb-2 pt-4">
                <input
                  type="text"
                  placeholder="Username"
                  {...register("username")}
                  className="block w-full p-4 text-lg rounded-sm bg-gray-200 text-black"
                />
                {errors.username && <p className="text-red-500 text-sm mt-1">{errors.username.message}</p>}
              </div>
              <div className="pb-2 pt-4">
                <input
                  type="password"
                  placeholder="Password"
                  {...register("password")}
                  className="block w-full p-4 text-lg rounded-sm bg-gray-200 text-black"
                />
                {errors.password && <p className="text-red-500 text-sm mt-1">{errors.password.message}</p>}

              </div>
              <div className="flex items-center justify-between mt-2">
                <label className="flex items-center text-sm text-white">
                  <input
                    type="checkbox"
                    {...register("remember")}
                    className="mr-2 w-4 h-4"
                  />
                  Remember me
                </label>
              </div>
              <div className="text-right text-gray-400 hover:underline hover:text-gray-100">
                <a href="#">Forgot your password?</a>
              </div>
              <div className="px-4 pb-2 pt-4">
                <button type="submit" className="uppercase block w-full p-4 text-lg rounded-full bg-third cursor-pointer hover:bg-indigo-600 focus:outline-none">sign in</button>
              </div>

              <div className="p-4 text-center right-0 left-0 flex justify-center space-x-4 mt-16 lg:hidden ">
                <a href="#">
                  <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z" /></svg>
                </a>
                <a href="#">
                  <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z" /></svg>
                </a>
                <a href="#">
                  <svg fill="#fff" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z" /></svg>
                </a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </>
  );
}

LoginPage.getLayout = function getLayout(page: ReactElement) {
  return page; // No layout
};