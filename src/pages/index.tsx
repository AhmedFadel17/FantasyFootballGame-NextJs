'use client';

import Layout from '@/components/layouts';
import { appConfigs } from '@/constants/configs';
import Link from 'next/link';
import { ReactElement } from 'react';

export default function HomePage() {
  return (
    <div className="min-h-screen  text-white flex flex-col">


      <section className="flex-1 flex py-16 flex-col items-center justify-center text-center px-6 bg-gradient-to-br from-secondary via-secondary to-white">
        <h1 className='text-5xl font-extrabold mb-3 text-main'>{appConfigs.appName}</h1>
        <h2 className="text-2xl font-bold mb-6 leading-tight text-third">
          Build your dream team. <br />
          Dominate LaLiga ⚽
        </h2>
        <p className="text-lg md:text-xl max-w-2xl mb-10 text-gray-300">
          Pick your favorite LaLiga players, earn points based on real-life performances, and challenge friends in custom leagues.
        </p>
        <Link href="/register">
          <button className="bg-main hover:bg-red-500 text-white cursor-pointer text-black px-8 py-3 rounded-xl text-lg font-bold transition shadow-lg">
            Get Started Now
          </button>
        </Link>
      </section>
      <section className="py-16 px-6">
        <div className="max-w-6xl mx-auto text-center">
          <h2 className="text-4xl font-bold text-main mb-8">Why Play LaLiga Fantasy?</h2>
          <div className="grid md:grid-cols-3 gap-8 text-white">
            <div className="bg-secondary p-6 rounded-xl">
              <h3 className="text-2xl text-main font-semibold mb-3">Real-time Points</h3>
              <p className="text-gray-300">Earn points based on actual LaLiga player performance — every pass, goal, and assist counts!</p>
            </div>
            <div className="bg-secondary p-6 rounded-xl">
              <h3 className="text-2xl text-main font-semibold mb-3">Create Leagues</h3>
              <p className="text-gray-300">Challenge your friends in private leagues or join public competitions to show your tactical skills.</p>
            </div>
            <div className="bg-secondary p-6 rounded-xl">
              <h3 className="text-2xl text-main font-semibold mb-3">Transfer Market</h3>
              <p className="text-gray-300">Buy and sell players every week, just like a real manager. Make smart trades and climb the rankings!</p>
            </div>
          </div>
        </div>
      </section>
      <section className="py-16 px-6">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-4xl text-main font-bold text-lime-300 text-center mb-10">🔥 Top Performers This Week</h2>
          <div className="grid md:grid-cols-3 gap-8 text-white">
            {[
              { name: 'Jude Bellingham', team: 'Real Madrid', points: 85 },
              { name: 'João Félix', team: 'Barcelona', points: 72 },
              { name: 'Antoine Griezmann', team: 'Atletico Madrid', points: 68 },
            ].map((player, idx) => (
              <div key={idx} className="bg-secondary rounded-xl p-6 shadow-lg">
                <h3 className="text-2xl text-main font-semibold mb-2">{player.name}</h3>
                <p className="text-green-400 mb-1">{player.team}</p>
                <p className="text-gray-300">Fantasy Points: <span className="font-bold text-lime-300">{player.points}</span></p>
              </div>
            ))}
          </div>
        </div>
      </section>
      <section className="py-20 px-6">
        <div className="max-w-6xl mx-auto text-center text-white">
          <h2 className="text-4xl font-bold text-main mb-10">🎮 How to Play</h2>
          <div className="grid md:grid-cols-3 gap-10">
            <div className="bg-secondary p-6 rounded-xl">
              <h3 className="text-2xl text-main font-semibold mb-2">1. Create Your Team</h3>
              <p className="text-gray-300">Select your 15-man squad with a limited budget. Pick the best talents from LaLiga!</p>
            </div>
            <div className="bg-secondary p-6 rounded-xl">
              <h3 className="text-2xl text-main font-semibold mb-2">2. Set Your Lineup</h3>
              <p className="text-gray-300">Choose your starting 11 and make tactical decisions before each gameweek.</p>
            </div>
            <div className="bg-secondary p-6 rounded-xl">
              <h3 className="text-2xl text-main font-semibold mb-2">3. Score & Win</h3>
              <p className="text-gray-300">Earn points and climb the leaderboard. Win rewards by outperforming others!</p>
            </div>
          </div>
        </div>
      </section>
      <section className="py-20 px-6">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-4xl text-main font-bold mb-4">Ready to Prove You're the Ultimate Manager?</h2>
          <p className="text-lg mb-8 text-secondary">Build your dream team, compete with friends, and dominate the league.</p>
          <a
            href="/register"
            className="bg-secondary text-main hover:bg-black hover:text-white transition px-6 py-3 text-xl font-semibold rounded-full shadow-lg"
          >
            Join LaLiga Fantasy Now
          </a>
        </div>
      </section>


    </div>
  );
}


HomePage.getLayout = function getLayout(page: ReactElement) {
  return <Layout hideSidebar>{page}</Layout>;
};