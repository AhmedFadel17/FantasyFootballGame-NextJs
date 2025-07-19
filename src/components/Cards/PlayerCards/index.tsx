'use client';
import { TiInfo } from "react-icons/ti";
import { BsInfoCircleFill } from "react-icons/bs";
import { IoPersonAddOutline } from "react-icons/io5";
import { JSX } from "react";




type PitchPlayerCardProps = {
  action?: JSX.Element | null,
  actionBtn?: JSX.Element | null,
  value?: string | number | null,
  player: FantasyPlayer | null
  position: string,
  allowed?: boolean,
}
export const PitchPlayerCard = ({ action = null, value = null, player, position, actionBtn = null, allowed = true }: PitchPlayerCardProps) => {
  if (!player) {
    return (
      <div className='w-35 h-45 bg-secondary/80 border border-dashed border-gray-500 text-white rounded'>
        <div className="relative p-4 pb-0 h-full overflow-hidden bg-mid-gray rounded text-secondary">
          <button className="btn flex items-center justify-center w-full h-full">
            <div className="flex flex-col items-center justify-center text-center">
              <IoPersonAddOutline className="text-2xl mb-2" />
              <p className="text-sm">{position}</p>
            </div>
          </button>
        </div>
      </div>
    );
  }

  const {
    name,
    team,
    status,
    position: pos,
    imageSrc,
    shirtNumber
  } = player;

  const infoIcon = status == "Available"
    ? <BsInfoCircleFill className="text-lg text-mid-gray" />
    : <TiInfo className="text-2xl text-red-500" />;

  return (
    <div
      className={`relative font-heading font-bold font-var-heading-500 w-35 h-45 rounded-lg overflow-hidden ${!allowed ? 'opacity-60' : ''}`}
      style={{
        backgroundImage: `linear-gradient(90deg, ${team?.mainColor}, ${team?.secondaryColor} 19%, ${team?.mainColor} 31%, ${team?.mainColor} 61%)`,
      }}
    >
      {/* Background pattern layer (optional overlay) */}
      <div className="absolute inset-0 opacity-80 bg-[url('/main/pattern.svg')] bg-no-repeat bg-top bg-cover" />

      {/* Player Image */}
      <img
        src={imageSrc}
        alt="a"
        className="absolute bottom-0 w-full object-cover h-5/6"
      />

      {/* Top Gradient overlay */}
      <div className="absolute top-0 left-0 right-0 h-32 bg-gradient-to-b from-black/70 to-transparent z-10" />

      {/* Player Info */}
      <div className="absolute bottom-0 left-0 right-0 z-20 text-white backdrop-blur-md bg-black/30 box-shadow-custom">
        <div className="text-lg font-bold leading-tight pt-1 px-2 text-center mb-1">{name}</div>
        {value !== null &&
          <div className="bg-secondary text-white px-2 py-[2px] text-center font-heading font-bold font-var-heading-500">{value}</div>
        }
      </div>
      <div className="absolute top-0 w-8 h-full bottom-0 left-2 text-center z-15 text-white backdrop-blur-md bg-black/30 box-shadow-custom">
        <div className="items-center py-2">
          <img
            src={team?.logoSrc}
            alt={team?.abbreviation}
            loading="lazy"
            className="w-full"
          />
          {formatPositionDiv(pos)}
          <p className="mb-1">#{shirtNumber}</p>
          {action}
        </div>
      </div>
      <div className="absolute top-0 w-6 h-full bottom-0 right-0 text-center z-15 text-white">
        <div className="items-center text-center">
          {allowed && actionBtn || ''}
        </div>
      </div>

      {/* Border/Frame */}
      <div className={`absolute inset-0 border-1 border-[#000] rounded-lg z-30 pointer-events-none`} />
    </div>

  )

};

export const getLastName = (fullName: string): string => {
  const parts = fullName?.trim()?.split(' ') || '';
  return parts.length > 1 ? parts[parts.length - 1] : fullName;
};

const formatPositionDiv = (position: PlayerPosition): string => {
  let res = (<></>);
  switch (position) {
    case "Goalkeeper":
      res = (<p className="bg-yellow-500">GK</p>);
      break;
    case "Defender":
      res = (<p className="bg-blue-500">DEF</p>);
      break;
    case "Midfielder":
      res = (<p className="bg-green-500">MID</p>);
      break;
    case "Forward":
      res = (<p className="bg-red-500">FRW</p>);
      break;
  }
  return res;
};