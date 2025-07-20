'use client';

import React from 'react';
import { useSelector } from 'react-redux';
import { selectUser } from '@/store/selectors/authSelectors';
import { FaRegStar } from "react-icons/fa";
import { PlayersCardTable } from '@/components/tables/PlayersCardTable';
import { IoMdFootball } from "react-icons/io";
import { RowCard } from '@/components/Cards/RowCard';
import { PlayersSimpleTable } from '@/components/tables/PlayersSimpleTable';
import { FaRankingStar } from "react-icons/fa6";
import { MdLooksOne } from "react-icons/md";
import { IoDiamond } from "react-icons/io5";
import Image from 'next/image';
import { Pitch } from '@/components/Pitch/PitchContainer';
import { Fixtures } from '@/components/Fixtures';
import { UserInfoCard } from '@/components/Cards/UserInfoCard';
import { PaginationButton } from '@/components/Buttons/PaginationButton';
import { TransfersInfoCard } from '@/components/Cards/TransfersInfoCard';
import { LeaguesRankingCard } from '@/components/Cards/LeaguesRankingCard';

const PlayerDashboardHome = () => {
  const user = useSelector(selectUser);

  // Dummy performance data
  const performance = {
    matches: 25,
    goals: 12,
    assists: 7,
    rating: 8.3,
  };

  const daka = [
    ["Mbappe", "FRW", "RMA", "17"],
    ["Mbappe", "FRW", "RMA", "17"],
    ["Mbappe", "FRW", "RMA", "17"],
    ["Mbappe", "FRW", "RMA", "17"],
    ["Mbappe", "FRW", "RMA", "17"],
  ]
  const stats = [
    { label: 'Highest Points', value: '102' },
    { label: 'Average Points', value: '56' },
    { label: 'Transfers Made', value: '3' },
    { label: 'Most Transferred In', value: 'Salah' },
    { label: 'Wildcards Played', value: '12,000' },
    { label: 'Most Captained', value: 'Haaland' },
  ];
  const gameweek = 30;
  return (
    <div className="space-y-6 p-12">

      <h1 className="text-2xl font-bold">Points - {user?.username || 'Player'}</h1>


      <div className='grid grid-cols-4'>
        <div className='col-span-3'>
          <div className='p-6 pr-2'>
            <div className="bg-white border border-mid-gray  shadow-md">
              {/* Header row */}
              <div className='bg-secondary  text-main py-6 px-4'>

                <div className="flex items-center py-4 border-custom relative">
                  <div className="flex-1">
                    {(gameweek > 1) && <PaginationButton btnType="prev" />}
                  </div>

                  <h4 className="text-center flex-5">
                    <h2 className="text-2xl text-center font-bold uppercase p-4">Gameweek {gameweek}</h2>
                  </h4>
                  <div className="flex-1 flex justify-end">
                    {(gameweek < 38) ? <PaginationButton btnType="next" /> : <div></div>}

                  </div>
                </div>
                <div className='p-6 text-xl font-bold space-y-3 border-custom relative py-3'>
                  <RowCard
                    rows={[
                      {
                        title: "Average Points",
                        value: 76,
                        flex: 1,
                        icon: IoMdFootball
                      },
                      {
                        title: "Hieghts Points",
                        value: 146,
                        flex: 1,
                        icon: MdLooksOne
                      },
                      {
                        title: "Rank",
                        icon: FaRankingStar,
                        value: '4,524,706',
                        flex: 1
                      },
                    ]}
                  />
                  <RowCard
                    rows={[
                      {
                        title: "Final Points",
                        value: 79,
                        flex: 1,
                        icon: IoDiamond
                      },

                    ]}
                  />


                </div>
              </div>

              <div className='py-4'>
                <Pitch
                  bench={[
                    {
                      name: "Injured",
                      points: 18,
                      imgSrc: "/main/shirt_gk.webp",
                      isOut: true,
                    },
                    {
                      name: "GK",
                      points: 18,
                      imgSrc: "/main/shirt_gk.webp"
                    },
                    {
                      name: "GK",
                      points: 18,
                      imgSrc: "/main/shirt_gk.webp"
                    },
                    {
                      name: "GK",
                      points: 18,
                      imgSrc: "/main/shirt_gk.webp"
                    }
                  ]}
                  players={[
                    [
                      {
                        name: "GK",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      }

                    ],
                    [
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp",
                        isCaptain: true
                      },

                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp",
                        isViceCaptain: true
                      },
                    ],
                    [
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },
                    ],
                    [
                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },

                      {
                        name: "DEF1",
                        points: 18,
                        imgSrc: "/main/shirt_gk.webp"
                      },

                    ]
                  ]}
                />
              </div>

            </div>
          </div>


        </div>
        <div className=''>
          <div className='p-6'>
            <UserInfoCard totalPlayers={10594894} gameweekPoints={47} overallRank={137389} overallPoints={1548} username='Ahmed Fadel' teamName='Prince Fadel' />
            <div className='py-4'>
              <TransfersInfoCard totalTransfers={24} gameweekTransfers={2} inTheBank={3.2} squadValue={99.2} />
            </div>
            <div className='py-4'>
              <LeaguesRankingCard leagues={[
                {
                  name:"Overall",
                  rank:1,
                  lastRank:5
                },
                {
                  name:"Egypt",
                  rank:10,
                  lastRank:5
                },
                {
                  name:"Elgan",
                  rank:70000,
                  lastRank:70000
                },
              ]}/>
            </div>
          </div>
        </div>

      </div>
      <div className='grid grid-cols-4'>
        <div className='p-6 col-span-3'>
          <Fixtures rows={[
            {
              day: "17 DEC",
              fixtures: [
                {
                  homeTeamName: "Real Madrid",
                  homeTeamImg: "/main/rm.png",
                  homeTeamScore: 4,
                  awayTeamName: "Real Madrid",
                  awayTeamImg: "/main/rm.png",
                  awayTeamScore: 4,
                },
                {
                  homeTeamName: "Real Madrid",
                  homeTeamImg: "/main/rm.png",
                  homeTeamScore: 4,
                  awayTeamName: "Real Madrid",
                  awayTeamImg: "/main/rm.png",
                  awayTeamScore: 4,
                },
              ]
            },
            {
              day: "17 DEC",
              fixtures: [
                {
                  homeTeamName: "Real Madrid",
                  homeTeamImg: "/main/rm.png",
                  homeTeamScore: 4,
                  awayTeamName: "Real Madrid",
                  awayTeamImg: "/main/rm.png",
                  awayTeamScore: 4,
                },
                {
                  homeTeamName: "Real Madrid",
                  homeTeamImg: "/main/rm.png",
                  homeTeamScore: 4,
                  awayTeamName: "Barcelona",
                  awayTeamImg: "/main/rm.png",
                  awayTeamScore: 4,
                },
              ]
            }
          ]}
            gameweek={30}
            deadline='Sun 25 May 16:30'
          />
        </div>


      </div>


    </div>
  );
};

export default PlayerDashboardHome;

// Require authentication for this page
(PlayerDashboardHome as any).requiresAuth = true;
