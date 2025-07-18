'use client';
import { appConfigs } from '@/constants/configs';
import Image from 'next/image';
import { footerData } from '@/constants/routes';
import Link from 'next/link';
export default function Footer() {
  return (
    <div className="relative bg-secondary text-fourth">
      <svg
        className="absolute top-0 w-full h-6 -mt-5 sm:-mt-10 sm:h-16 text-secondary"
        preserveAspectRatio="none"
        viewBox="0 0 1440 54"
      >
        <path
          fill="currentColor"
          d="M0 22L120 16.7C240 11 480 1.00001 720 0.700012C960 1.00001 1200 11 1320 16.7L1440 22V54H1320C1200 54 960 54 720 54C480 54 240 54 120 54H0V22Z"
        />
      </svg>
      <div className="px-4 pt-12 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8">
        <div className="grid gap-16 row-gap-10 mb-8 lg:grid-cols-6">
          <div className="md:max-w-md lg:col-span-2">
            <div className='flex'>
              <Image src={appConfigs.logo} width={50} height={100} alt='' />
              <h1 className={`text-xl font-bold text-main`}>{appConfigs.appName}</h1>
            </div>

            <div className="mt-4 lg:max-w-sm">
              <p className="text-sm text-deep-purple-50">
                {footerData.description}
              </p>
            </div>
          </div>
          <div className="grid grid-cols-2 gap-5 row-gap-8 lg:col-span-4 md:grid-cols-4">
            {footerData.links.map(({ title, links },index) => (
              <div
              key={index}
              >
                <p className="text-third text-lg font-semibold tracking-wide text-teal-accent-400">
                  {title}
                </p>
                <ul className="mt-2 space-y-2">

                  {links.map(({ title, path },index) => (
                    <li
                        key={index}
                    >
                      <Link
                        href={path}
                        className="text-sm transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">
                        {title}
                      </Link>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
          </div>
        </div>
        <div className="flex flex-col justify-between pt-5 pb-10 border-t border-deep-purple-accent-200 sm:flex-row">
          <p className="text-sm text-gray-100">
            © Copyright {new Date().getFullYear()} {appConfigs.appName} Inc. All rights reserved.
          </p>

          <div className="flex items-center mt-4 space-x-4 sm:mt-0">
            {footerData.social.map(({ title, path, icon: Icon },index) => (
              <Link
                key={index}
                href={path}
                className="transition-colors bg-fourth p-2 text-main rounded-lg duration-300 text-deep-purple-100 hover:text-teal-accent-400">
                <Icon className='' />
              </Link>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
