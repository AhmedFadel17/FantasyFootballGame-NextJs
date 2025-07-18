'use client';

import Link from 'next/link';
import { FaArrowCircleRight } from "react-icons/fa";




export const TransfersInfoCard = ({ inTheBank,squadValue,totalTransfers,gameweekTransfers }: TransfersInfoCardProps) => {

    return (
        <div className="bg-white rounded-xl shadow-md min-w-xs max-w-sm border border-gray-200 uppercase">

            <div className='bg-secondary mb-4 space-y-3 p-4 items-center text-gray-300 uppercase'>
                <div className=''>
                    <h4 className='font-bold text-main'>Transfers & Finance</h4>
                </div>
            </div>



            <div className="">
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-gray-100'>

                    <div className="">Gameweek transfers</div>
                    <div className="font-heading font-bold font-var-heading-500">{gameweekTransfers}</div>

                </div>
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-white'>

                    <div className="">Total transfers</div>
                    <div className="font-heading font-bold font-var-heading-500">{totalTransfers}</div>

                </div>
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-gray-100'>
                    <div className="">Squad value</div>
                    <div className="font-heading font-bold font-var-heading-500">€{squadValue}</div>

                </div>
                <div className='flex justify-between items-center text-sm py-[.5rem] px-4 bg-white'>

                    <div className="">In the bank</div>
                    <div className="font-heading font-bold font-var-heading-500">€{inTheBank}</div>

                </div>
            </div>

            <div className="text-center mt-6 py-6">
                <Link
                    href={""}
                    className="inline-flex items-center text-main font-bold text-sm hover:underline"
                >
                    <span className='items-center uppercase'>Transfers History</span>

                    <FaArrowCircleRight className='ml-2' />

                </Link>
            </div>
        </div>
    );
};
