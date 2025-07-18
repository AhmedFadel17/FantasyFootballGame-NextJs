'use client';

import Link from 'next/link';
import { FaArrowCircleRight } from "react-icons/fa";
import { MdOutlineKeyboardDoubleArrowDown, MdOutlineKeyboardDoubleArrowUp } from "react-icons/md";
import { FaMinus } from "react-icons/fa6";





export const LeaguesRankingCard = ({ leagues }: LeaguesRankingCardProps) => {
    const FormatProgress = (rank: number, lastRank: number) => {
        if (rank > lastRank) {
            return <MdOutlineKeyboardDoubleArrowDown className='text-red-500' />
        } else if (rank < lastRank) {
            return <MdOutlineKeyboardDoubleArrowUp className='text-green-500' />

        } else {
            return <FaMinus className='text-gray-500' />
        }
    }
    return (
        <div className="bg-white rounded-xl shadow-md min-w-xs max-w-sm border border-gray-200 uppercase">

            <div className='bg-secondary mb-4 space-y-3 p-4 items-center text-gray-300 uppercase'>
                <div className=''>
                    <h4 className='font-bold text-main'>Leagues</h4>
                </div>
            </div>



            <div className="">
                {leagues.map((league,index) => (
                    <div className={`flex justify-between items-center text-sm py-[.5rem] px-4  ${index%2==0?'bg-gray-100':'bg-white'}`}>
                        <div className='flex items-center text-xl'>
                            {FormatProgress(league.rank, league.lastRank)}
                            <div className="ml-2 text-lg font-heading font-bold font-var-heading-500">{new Intl.NumberFormat('en-US').format(league.rank)}</div>
                        </div>
                        <div className="">{league.name}</div>

                    </div>
                ))}

            </div>

            <div className="text-center mt-6 py-6">
                <Link
                    href={""}
                    className="inline-flex items-center text-main font-bold text-sm hover:underline"
                >
                    <span className='items-center uppercase'>All Leagues</span>

                    <FaArrowCircleRight className='ml-2' />

                </Link>
            </div>
        </div>
    );
};
