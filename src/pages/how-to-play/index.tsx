'use client';

import Layout from '@/components/layouts';
import { appConfigs } from '@/constants/configs';
import { ReactElement } from 'react';
import Image from 'next/image';

const steps = [
  {
    title: 'Pick Your Team',
    content: 'Sign up and build your squad using your initial budget. Think strategically to balance stars and bargains.',
    image: '/images/howto1.png',
  },
  {
    title: 'Pick Your Starting 11',
    content: 'From your 15 players, choose 11 to start. Make sure your formation is valid and optimized for points.',
    image: '/images/howto2.png',
  },
  {
    title: 'Assign Captain & Vice',
    content: 'Choose a captain (2x points) and a vice-captain (backup if captain doesn’t play).',
    image: '/images/howto3.png',
  },
  {
    title: 'Earn Points Weekly',
    content: 'Watch your team earn points based on real-life performances. Transfers and chips can boost your success.',
    image: '/images/howto4.png',
  },
];

export default function HowToPlayPage() {
  return (
    <div className="min-h-screen text-white flex flex-col">
      <section className="flex py-16 flex-col items-center justify-center text-center px-6 bg-gradient-to-br from-secondary via-secondary to-white">
        <img
          src={appConfigs.logo}
          alt={`${appConfigs.appName} Logo`}
          className="w-32 h-32 mb-6 rounded-lg shadow-lg bg-white object-contain"
        />
        <h1 className="text-5xl font-extrabold mb-3 text-main">{appConfigs.appName}</h1>
        <h2 className="text-3xl font-bold mb-6 leading-tight text-gray-300 uppercase">How to Play</h2>
      </section>

      <section className="py-12 px-4 w-full md:w-8/12 mx-auto">
        {steps.map((step, i) => (
          <div key={i} className={`flex flex-col md:flex-row ${i % 2 !== 0 ? 'md:flex-row-reverse' : ''} items-center gap-10`}>
            <div className="md:w-1/2">
              <h3 className="text-2xl font-bold mb-4 text-main">{step.title}</h3>
              <p className="text-gray-600">{step.content}</p>
            </div>
            <div className="md:w-1/2">
              <Image
                src={step.image}
                alt={step.title}
                width={600}
                height={400}
                className="rounded-2xl shadow-lg object-cover"
              />
            </div>
          </div>
        ))}
      </section>
    </div>
  );
}

HowToPlayPage.getLayout = function getLayout(page: ReactElement) {
  return <Layout hideSidebar>{page}</Layout>;
};
