'use client';

import Image from "next/image";
import { Fixture } from "./fixture";
import { appConfigs } from "@/constants/configs";
import { useGetDataQuery } from "@/services/api";
import { useEffect, useState } from "react";
import dayjs from 'dayjs';
import { GrNext, GrPrevious } from "react-icons/gr";


export const Fixtures = ({ gameweek }: FixturesProps) => {
    const [gameweekNumber, setGameweekNumber] = useState(gameweek || 1);
    const { data, isSuccess } = useGetDataQuery({
        url: '/api/Fixtures', params: {
            gameweekId: gameweekNumber,
            pageSize: 10,
        }
    });
const [fixtures, setFixtures] = useState<Record<string, Fixture[]>>({});
    const handleGameweek=(g:number)=>{
        setGameweekNumber(g);
    }
    useEffect(() => {
        if (data && isSuccess) {
            const items = data.data.items;

            const grouped = items.reduce((acc: any, item: Fixture) => {
                // extract just the date part (e.g., "2025-08-16")
                const dateKey = new Date(item.matchTime).toISOString().split('T')[0];

                if (!acc[dateKey]) acc[dateKey] = [];
                acc[dateKey].push(item);

                return acc;
            }, {} as Record<string, typeof items>);

            setFixtures(grouped);
        }
    }, [data, isSuccess]);


    return (
        <div className="bg-white border border-mid-gray  shadow-md">
            <div className="bg-secondary text-main p-4 font-bold">
                <div className="flex items-center border-custom relative">
                    <Image src={appConfigs.logo} width={50} height={100} alt='' />
                    <h4 className="text-2xl py-4">Fixtures</h4>
                </div>
                <div className="flex justify-between items-center mt-4 text-sm p-1">
                    <div className="flex gap-2 items-center">
                        
                        <button
                            onClick={() => handleGameweek(gameweekNumber - 1)}
                            disabled={gameweekNumber<=1}
                            className="btn p-2 bg-secondary text-main font-bold rounded-full disabled:opacity-50"
                        >
                            <GrPrevious className="text-xl" />
                        </button>
                    </div>

                    <h4 className="text-center flex-5">
                        <span className="text-xl uppercase">Gameweek {gameweekNumber}</span>
                    </h4>

                    <div className="flex gap-2 items-center">
                        <button
                            onClick={() => handleGameweek(gameweekNumber + 1)}
                            disabled={gameweekNumber>=38}
                            className="btn p-2 bg-secondary text-main font-bold rounded-full disabled:opacity-50"
                        >
                            <GrNext className="text-xl" />
                        </button>
                        
                    </div>
                </div>
                

                <p className="text-center font-[300] text-sm opacity-80">All times are shown in your <b>local time</b></p>

            </div>

            {Object.entries(fixtures).map(([date, matches]) => (
                <div className="text-center py-2">
                    <span className="text-center bg-secondary rounded-t py-1 text-main px-12 uppercase">
                        {dayjs(date).format('ddd DD MMM')}
                    </span>
                    {matches.map(match => (
                        <Fixture {...match} />
                    ))}
                </div>
            ))}
        </div>
    );
}