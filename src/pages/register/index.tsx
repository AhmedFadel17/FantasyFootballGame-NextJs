import { useForm } from "react-hook-form";
import * as yup from "yup";
import { yupResolver } from "@hookform/resolvers/yup";
import { appConfigs } from '@/constants/configs';
import Image from 'next/image';
import { useRouter } from 'next/navigation';
import { showFormErrors, showSuccess, showLoading, dismissToast } from '@/utils/toastUtils';
import { usePageLoader } from '@/hooks/usePageLoader';
import PageLoader from '@/components/Loader';
import { useRegisterMutation } from '@/services/identityApi';


const schema = yup.object().shape({
  email: yup.string().email('Invalid email').required('Email is required'),
  username: yup.string().required('Username is required'),
  password: yup.string().min(6, 'Password must be at least 6 characters').required('Password is required'),
  confirmPassword: yup
    .string()
    .oneOf([yup.ref('password')], 'Passwords must match')
    .required('Please confirm your password'),
});

export default function RegisterPage() {
  const router = useRouter();
  const { isLoading, showLoader, hideLoader } = usePageLoader();

  const { register, handleSubmit, formState: { errors } } = useForm({
    resolver: yupResolver(schema),
  });
  const [registerUser] = useRegisterMutation();
  const onSubmit = async (data: any) => {
    const toastId = showLoading('Creating your account...');
    showLoader();

    try {
      const { confirmPassword, ...payload } = data;
      await registerUser(data).unwrap();
      showSuccess('Registration successful!,login now...');
      router.push('/login');
    } catch (err: any) {
      showFormErrors(err);
    } finally {
      dismissToast(toastId);
      hideLoader();
    }
  };

  return (
    <div className="min-h-screen flex items-stretch text-white">
      <PageLoader visible={isLoading} />
      <div className="lg:flex w-1/2 hidden bg-main bg-no-repeat bg-cover relative items-center bg-[url(/main/banner.jpg)]">
        <div className="absolute bg-black opacity-60 inset-0 z-0"></div>
        <div className="w-full px-24 z-10">
          <h1 className="text-5xl font-bold text-left tracking-wide">
            Build Your Dream Team. <br /> Rule the Fantasy League.
          </h1>
          <p className="text-3xl my-4">
            Join millions of LaLiga fans and turn matchdays into victories.
          </p>
        </div>
      </div>

      <div className="lg:w-1/2 w-full flex items-center justify-center text-center md:px-16 px-0 z-0 bg-secondary">
        <div className="w-full py-6 z-20">
          <div className="flex items-center justify-center mb-6">
            <Image src={appConfigs.logo} width={50} height={50} alt="Logo" />
            <h1 className="text-xl font-bold text-main ml-2">{appConfigs.appName}</h1>
          </div>

          <form onSubmit={handleSubmit(onSubmit)} className="sm:w-2/3 w-full px-4 lg:px-0 mx-auto space-y-4">
            <input
              type="email"
              placeholder="Email"
              {...register("email")}
              className="block w-full p-4 text-lg rounded-sm bg-gray-200 text-black"
            />
            {errors.email && <p className="text-red-500 text-sm">{errors.email.message}</p>}

            <input
              type="text"
              placeholder="Username"
              {...register("username")}
              className="block w-full p-4 text-lg rounded-sm bg-gray-200 text-black"
            />
            {errors.username && <p className="text-red-500 text-sm">{errors.username.message}</p>}

            <input
              type="password"
              placeholder="Password"
              {...register("password")}
              className="block w-full p-4 text-lg rounded-sm bg-gray-200 text-black"
            />
            {errors.password && <p className="text-red-500 text-sm">{errors.password.message}</p>}

            <input
              type="password"
              placeholder="Confirm Password"
              {...register("confirmPassword")}
              className="block w-full p-4 text-lg rounded-sm bg-gray-200 text-black"
            />
            {errors.confirmPassword && <p className="text-red-500 text-sm">{errors.confirmPassword.message}</p>}

            <button
              type="submit"
              className="btn cursor-pointer block w-full p-4 text-lg rounded-sm bg-main text-white font-semibold"
            >
              Register
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}
