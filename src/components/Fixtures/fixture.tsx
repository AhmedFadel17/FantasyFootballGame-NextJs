'use client';
import dayjs from 'dayjs';

export const Fixture = ({homeTeam,homeTeamScore,awayTeam,matchTime,status,awayTeamScore}:Fixture) => {
    return (
        <div className='flex items-center bg-light-gray  border border-mid-gray p-2'>
            <div className='flex flex-2 justify-end items-center text-right pr-10'>
                <p className='text-2xl font-bold'>{homeTeam?.abbreviation}</p>
                <div className='ml-4'>
                    <img
                        width={35}
                        height={35}
                        src={homeTeam?.logoSrc}
                    />
                </div>

            </div>
            <div className='text-center '>
                {(status==="TOD") ?
                <div className='flex p-2 bg-main text-white text-xl font-heading font-bold font-var-heading-500 items-center text-center divide-x'>
                    <span className='px-4'>{dayjs(matchTime).format('HH:mm')}</span>
                </div>
                :
                <div className='flex p-2 bg-main text-white text-xl font-heading font-bold font-var-heading-500 items-center text-center divide-x'>
                    <span className='px-4'>{homeTeamScore}</span>
                    <span className='px-4'>{awayTeamScore}</span>
                </div>
                }
                
            </div>
            <div className='flex flex-2 items-center text-left pl-10'>
                <div className='mr-4'>
                    <img
                        width={35}
                        height={35}
                        src={awayTeam?.logoSrc}
                    />
                </div>
                <p className='text-2xl font-bold'>{awayTeam?.abbreviation}</p>
            </div>
        </div>
    )
}