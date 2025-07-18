'use client';

import Link from 'next/link';
import { FaArrowCircleRight } from "react-icons/fa";

export const UserInfoCard = ({ username, teamName, overallPoints, overallRank, gameweekPoints, totalPlayers }: UserInfoCardProps) => {

    return (
        <div className="bg-white rounded-xl shadow-md min-w-xs max-w-sm border border-gray-200 uppercase">

            <div className='bg-secondary mb-4 space-y-3 p-4 items-center text-gray-300 uppercase'>
                <div className=''>
                    <h2 className='text-7xl text-main font-heading font-bold font-var-heading-500'>{new Intl.NumberFormat('en', { notation: 'compact' }).format(overallRank)}º</h2>
                    <p className='text-xs font-bold text-main'>Overall Rank</p>
                </div>
                <div className=''>
                    <p className='text-sm font-bold text-white m-0'>{username}</p>
                    <h2 className='font-var-heading-wg text-main font-heading text-3xl leading-[.8]'>{teamName}</h2>
                </div>
            </div>



            <div className="">
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-gray-100'>

                    <div className="">Overall Points</div>
                    <div className="font-heading font-bold font-var-heading-500">{new Intl.NumberFormat('en-US').format(overallPoints)}</div>

                </div>
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-white'>

                    <div className="">Total players</div>
                    <div className="font-heading font-bold font-var-heading-500">{new Intl.NumberFormat('en-US').format(totalPlayers)}</div>

                </div>
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-gray-100'>
                    <div className="">Overall Rank</div>
                    <div className="font-heading font-bold font-var-heading-500">{new Intl.NumberFormat('en-US').format(overallRank)}</div>

                </div>
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-white'>

                    <div className="">Gameweek points</div>
                    <div className="font-heading font-bold font-var-heading-500">{gameweekPoints}</div>

                </div>
            </div>

            <div className="text-center mt-6 py-6">
                <Link
                    href={""}
                    className="inline-flex items-center text-main font-bold text-sm hover:underline"
                >
                    <span className='items-center uppercase'>Gameweek History</span>

                    <FaArrowCircleRight className='ml-2' />

                </Link>
            </div>
        </div>
    );
};
