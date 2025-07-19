'use client';

import HomeBasicCard from '@/components/Cards/HomeBasicCard';
import { PitchPlayerCard } from '@/components/Cards/PlayerCards';
import Layout from '@/components/layouts';
import { appConfigs } from '@/constants/configs';
import Link from 'next/link';
import { ReactElement } from 'react';
import { FaTrophy, FaUsers, FaExchangeAlt, FaStar, FaQuestionCircle } from 'react-icons/fa';

const topPlayers = [
  {
    "id": 68246,
    "name": "Vini Jr.",
    "fullName": "Vinícius José Paixão de Oliveira Júnior",
    "price": 15,
    "shirtNumber": 7,
    "position": "Forward",
    "status": "Available",
    "teamId": 15,
    "imageSrc": "https://assets.laliga.com/squad/2025/t186/p246333/2048x2225/p246333_t186_2025_0_001_000.png",
    "country": "BR",
    "dateOfBirth": "2000-07-12T00:00:00",
    "weight": 73,
    "height": 176,
    "team": {
      "id": 15,
      "name": "Real Madrid",
      "abbreviation": "RMA",
      "mainColor": "#ffffff",
      "secondaryColor": "#FEBE10",
      "shirtImgSrc": "https://i.ibb.co/PvQfNFVC/rma-removebg-preview.png",
      "logoSrc": "https://assets.laliga.com/assets/2019/06/07/xlarge/real-madrid.png"
    }
  },
  {
    "id": 68206,
    "name": "Lamine Yamal",
    "fullName": "Lamine Yamal Nasraoui Ebana",
    "price": 7,
    "shirtNumber": 19,
    "position": "Forward",
    "status": "Available",
    "teamId": 4,
    "imageSrc": "https://assets.laliga.com/squad/2025/t178/p593109/2048x2225/p593109_t178_2025_0_001_000.png",
    "country": "ES",
    "dateOfBirth": "2007-07-13T00:00:00",
    "weight": 72,
    "height": 180,
    "team": {
      "id": 4,
      "name": "FC Barcelona",
      "abbreviation": "BAR",
      "mainColor": "#0f39b8",
      "secondaryColor": "#bc161c",
      "shirtImgSrc": "https://i.ibb.co/hFWtr7J5/bar-removebg-preview.png",
      "logoSrc": "https://assets.laliga.com/assets/2019/06/07/xlarge/barcelona.png"
    },
  },
  {
    "id": 68578,
    "name": "Mbappé",
    "fullName": "Kylian Mbappé",
    "price": 15,
    "shirtNumber": 9,
    "position": "Forward",
    "status": "Available",
    "teamId": 15,
    "imageSrc": "https://assets.laliga.com/squad/2025/t186/p220160/2048x2225/p220160_t186_2025_0_001_000.png",
    "country": "FR",
    "dateOfBirth": "1998-12-20T00:00:00",
    "weight": 75,
    "height": 178,
    "team": {
      "id": 15,
      "name": "Real Madrid",
      "abbreviation": "RMA",
      "mainColor": "#ffffff",
      "secondaryColor": "#FEBE10",
      "shirtImgSrc": "https://i.ibb.co/PvQfNFVC/rma-removebg-preview.png",
      "logoSrc": "https://assets.laliga.com/assets/2019/06/07/xlarge/real-madrid.png"
    }
  },
  {
    "id": 68187,
    "name": "Griezmann",
    "fullName": "Antoine Griezmann",
    "price": 12,
    "shirtNumber": 7,
    "position": "Forward",
    "status": "Available",
    "teamId": 2,
    "imageSrc": "https://assets.laliga.com/squad/2025/t175/p76650/2048x2225/p76650_t175_2025_0_001_000.png",
    "country": "FR",
    "dateOfBirth": "1991-03-21T00:00:00",
    "weight": 73,
    "height": 176,
    "team": {
      "id": 2,
      "name": "Atlético de Madrid",
      "abbreviation": "ATM",
      "mainColor": "#f21e27",
      "secondaryColor": "#ffffff",
      "shirtImgSrc": "https://i.ibb.co/7tLSNhLW/atm-removebg-preview.png",
      "logoSrc": "https://assets.laliga.com/assets/2024/06/17/xlarge/cbc5c8cc8c3e8abd0e175c00ee53b723.png"
    }
  },
  {
    "id": 68199,
    "name": "Pedri",
    "fullName": "Pedro González López",
    "price": 9,
    "shirtNumber": 8,
    "position": "Midfielder",
    "status": "Available",
    "teamId": 4,
    "imageSrc": "https://assets.laliga.com/squad/2025/t178/p490541/2048x2225/p490541_t178_2025_0_001_000.png",
    "country": "ES",
    "dateOfBirth": "2002-11-25T00:00:00",
    "weight": 60,
    "height": 174,
    team: {
      "id": 4,
      "name": "FC Barcelona",
      "abbreviation": "BAR",
      mainColor: "#0f39b8",
      "secondaryColor": "#bc161c",
      "shirtImgSrc": "https://i.ibb.co/hFWtr7J5/bar-removebg-preview.png",
      "logoSrc": "https://assets.laliga.com/assets/2019/06/07/xlarge/barcelona.png"
    }
  }
];

const testimonials = [
  {
    name: 'Carlos M.',
    text: "LaLiga Fantasy has made every matchday more exciting! Competing with friends is a blast.",
    avatar: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YXZhdGFyfGVufDB8fDB8fHww',
  },
  {
    name: 'Sara G.',
    text: "I love the real-time points and the transfer market. It's the best fantasy football game out there!",
    avatar: 'https://t3.ftcdn.net/jpg/02/10/52/66/360_F_210526625_wcxUSGitfvdLr2MCGpHBKJfvHH17KpS7.jpg',
  },
  {
    name: 'Luis R.',
    text: "The interface is super easy to use and the community is awesome. Highly recommended!",
    avatar: 'https://t4.ftcdn.net/jpg/02/19/63/31/360_F_219633151_BW6TD8D1EA9OqZu4JgdmeJGg4JBaiAHj.jpg',
  },
];

const faqs = [
  {
    question: "Is LaLiga Fantasy free to play?",
    answer: "Yes! You can play for free and compete in public or private leagues.",
  },
  {
    question: "How are points calculated?",
    answer: "Points are based on real-life LaLiga player performances, including goals, assists, clean sheets, and more.",
  },
  {
    question: "Can I play with my friends?",
    answer: "Absolutely! Create a private league and invite your friends to join the competition.",
  },
];

export default function HomePage() {
  return (
    <div className="min-h-screen text-white flex flex-col">
      {/* Hero Section */}
      <section className="flex-1 flex py-20 flex-col items-center justify-center text-center px-6 bg-gradient-to-br from-secondary via-secondary to-white relative overflow-hidden">
        <div className="absolute inset-0 pointer-events-none opacity-20 bg-[radial-gradient(ellipse_at_top_right,_var(--tw-gradient-stops))] from-main via-mid-gray to-secondary"></div>
        <img
          src={appConfigs.logo}
          alt={`${appConfigs.appName} Logo`}
          className="w-36 h-36 mb-8 rounded-lg shadow-2xl bg-white object-contain border-4 border-main"
        />
        <h1 className="text-6xl font-extrabold mb-4 text-main drop-shadow-lg">{appConfigs.appName ?? 'LaLiga Fantasy'}</h1>
        <h2 className="text-3xl font-bold mb-8 leading-tight text-third">
          Build your dream team.<br />
          Dominate LaLiga <span role="img" aria-label="soccer">⚽</span>
        </h2>
        <p className="text-xl md:text-2xl max-w-2xl mb-10 text-gray-100 font-medium">
          Pick your favorite LaLiga players, earn points based on real-life performances, and challenge friends in custom leagues.
        </p>
        <Link href="/register" passHref>
          <button className="btn bg-main hover:bg-red-500 text-white px-10 py-4 rounded-2xl text-xl font-bold transition shadow-xl border-2 border-main hover:border-red-500 focus:outline-none focus:ring-4 focus:ring-main/50">
            Get Started Now
          </button>
        </Link>
      </section>

      {/* Features Section */}
      <section className="max-w-6xl text-center mx-auto py-20 px-6 border-b-4 border-main">
        <h2 className="text-4xl font-bold text-main mb-12">Why Play LaLiga Fantasy?</h2>
        <div className="grid md:grid-cols-3 gap-10 text-white">
          <HomeBasicCard
            icon={<FaTrophy />}
            title="Real-time Points"
            description="Earn points based on actual LaLiga player performance — every pass, goal, and assist counts!"
            overlayImage="/main/pattern.svg"
          />
          <HomeBasicCard
            icon={<FaUsers />}
            title="Create Leagues"
            description="Challenge your friends in private leagues or join public competitions to show your tactical skills."
            overlayImage="/main/pattern.svg"
          />
          <HomeBasicCard
            icon={<FaExchangeAlt />}
            title="Transfer Market"
            description="Buy and sell players every week, just like a real manager. Make smart trades and climb the rankings!"
            overlayImage="/main/pattern.svg"
          />
        </div>
      </section>

      {/* Top Performers Section */}
      <section className="max-w-6xl text-center mx-auto py-20 px-6 border-b-4 border-main">
        <h2 className="text-4xl text-main font-bold text-center mb-12">🔥 Select Your Favourite Players</h2>
        <div className="grid md:grid-cols-5 gap-10 text-white">
          {topPlayers.map((player, idx) => (

            <PitchPlayerCard key={idx} player={player} position='FRW' />
          ))}
        </div>
      </section>

      {/* How to Play Section */}
      {/* How to Play Section */}
      <section className="max-w-6xl text-center mx-auto py-20 px-6 border-b-4 border-main">
        <h2 className="text-4xl font-bold text-main mb-12">🎮 How to Play</h2>
        <div className="grid md:grid-cols-3 gap-10">
          <HomeBasicCard
            icon={<FaStar />}
            title="1. Create Your Team"
            description="Select your 15-man squad with a limited budget. Pick the best talents from LaLiga!"
            overlayImage="/main/pattern.svg"
          />
          <HomeBasicCard
            icon={<FaUsers />}
            title="2. Set Your Lineup"
            description="Choose your starting 11 and make tactical decisions before each gameweek."
            overlayImage="/main/pattern.svg"
          />
          <HomeBasicCard
            icon={<FaTrophy />}
            title="3. Score & Win"
            description="Earn points and climb the leaderboard. Win rewards by outperforming others!"
            overlayImage="/main/pattern.svg"
          />
        </div>
      </section>

      {/* Testimonials Section */}
      <section className="max-w-4xl text-center mx-auto py-20 px-6 border-b-4 border-main">
        <h2 className="text-4xl font-bold text-main mb-12">What Our Managers Say</h2>
        <div className="grid md:grid-cols-3 gap-10">
          {testimonials.map((t, idx) => (
            <div key={idx} className="bg-secondary/90 p-8 rounded-2xl shadow-lg flex flex-col items-center hover:scale-105 transition-transform">
              <img
                src={t.avatar}
                alt={t.name}
                className="w-16 h-16 rounded-full mb-4 border-2 border-main object-cover bg-white"
                loading="lazy"
              />
              <p className="text-gray-100 italic mb-3">"{t.text}"</p>
              <span className="font-bold text-main">{t.name}</span>
            </div>
          ))}
        </div>
      </section>

      {/* FAQ Section */}
      <section className="max-w-4xl text-center mx-auto py-20 px-6 border-b-4 border-main">
        <h2 className="text-4xl font-bold text-main mb-10 flex items-center justify-center gap-2">
          <FaQuestionCircle className="inline text-main mr-2" /> Frequently Asked Questions
        </h2>
        <div className="space-y-8 text-left">
          {faqs.map((faq, idx) => (
            <div key={idx} className="bg-secondary/80 p-6 rounded-xl shadow-md">
              <h3 className="text-xl font-semibold text-main mb-2">{faq.question}</h3>
              <p className="text-gray-100">{faq.answer}</p>
            </div>
          ))}
        </div>
      </section>

      {/* Final Call to Action */}
      <section className="py-20 px-6">
        <div className="max-w-4xl mx-auto text-center">
          <h2 className="text-4xl font-bold text-main mb-4">Ready to Prove You're the Ultimate Manager?</h2>
          <p className="text-lg mb-8 text-secondary">Build your dream team, compete with friends, and dominate the league.</p>
          <Link href="/register" passHref>
            <button className="bg-main text-white hover:bg-black hover:text-main transition px-8 py-4 text-xl font-semibold rounded-full shadow-xl border-2 border-main hover:border-black focus:outline-none focus:ring-4 focus:ring-main/50">
              Join LaLiga Fantasy Now
            </button>
          </Link>
        </div>
      </section>
    </div>
  );
}

HomePage.getLayout = function getLayout(page: ReactElement) {
  return <Layout hideSidebar>{page}</Layout>;
};