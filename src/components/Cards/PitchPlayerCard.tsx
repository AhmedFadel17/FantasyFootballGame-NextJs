// 'use client';
// import Image from "next/image";
// import { TiInfo } from "react-icons/ti";
// import { BsInfoCircleFill } from "react-icons/bs";
// import { MdSwapHorizontalCircle } from "react-icons/md";
// import { IoPersonAddOutline } from "react-icons/io5";
// import { IoMdCloseCircle } from "react-icons/io";
// import { useDispatch } from "react-redux";
// import { removePlayerFromPosition } from "@/store/slices/transferSlice";
// import { pickTeamRemovePlayer } from "@/store/slices/pickTeamSlice";


// function GetActionIcon(pitchType: PitchType, player: FantasyPlayer, isCaptain: boolean, isViceCaptain: boolean) {
//   const dispatch = useDispatch();
//   let res = (<></>);
//   if (pitchType == "Transfers") {
//     res = (<IoMdCloseCircle className="text-xl text-red-400" onClick={() => dispatch(removePlayerFromPosition(player))} />);
//   } else if (pitchType == "PickTeam") {
//     res = (<IoMdCloseCircle className="text-xl text-red-400" onClick={() => dispatch(pickTeamRemovePlayer(player))} />);
//   } else if (pitchType == "MyTeam") {
//     res = (<MdSwapHorizontalCircle className="text-xl text-yellow-400" />);
//   } else {
//     if (isCaptain) {
//       res = (<span className="flex items-center justify-center w-[1.1rem] h-[1.1rem] rounded-full bg-main text-white text-xs font-bold">C</span>)
//     } else if (isViceCaptain) {
//       res = (<span className="flex items-center justify-center w-[1.1rem] h-[1.1rem] rounded-full bg-third text-white text-xs font-bold">V</span>)
//     }
//   }
//   return res;
// }



// export const PitchPlayerCard = ({ isBlank = false, position, pitchType, player }: PitchPlayerCardProps) => {
//   if (isBlank || !player) {
//     return (
//       <div className='w-30 bg-secondary/80 border border-dashed border-gray-500 text-white rounded'>
//         <div className="relative p-4 pb-0 h-35 overflow-hidden bg-mid-gray rounded text-secondary">
//           <button className="btn flex items-center justify-center w-full h-full">
//             <div className="flex flex-col items-center justify-center text-center">
//               <IoPersonAddOutline className="text-2xl mb-2" />
//               <p className="text-sm">{position}</p>
//             </div>
//           </button>
//         </div>
//       </div>
//     );
//   }

//   const {
//     name,
//     team,
//     price,
//     points,
//     isOut,
//     isCaptain,
//     isViceCaptain,
//   } = player;

//   const infoIcon = isOut
//     ? <TiInfo className="text-2xl text-red-500" />
//     : <BsInfoCircleFill className="text-lg text-mid-gray" />;


//   return (
//     <div className='w-30 bg-secondary/80 border border-green-500 text-white hover:border-white cursor-pointer rounded'>
//       <div className='relative p-4 pb-0 h-24 overflow-hidden'>
//         <span className="space-y-2 btn absolute left-1 top-1">
//           {GetActionIcon(pitchType, player, isCaptain, isViceCaptain)}
//         </span>
//         <span className="space-y-2 btn absolute top-1 right-1">
//           {infoIcon}
//         </span>
//         <img src={team?.shirtImgSrc} width={82} height={60} alt={name} />
//       </div>

//       <div className='bg-main text-white px-2 py-[2px] text-center'>
//         <p className='m-0'>{getLastName(name)}</p>
//       </div>
//       <div className='bg-secondary text-white px-2 py-[2px] text-center font-heading font-bold font-var-heading-500'>
//         <p className='m-0'>{(pitchType == "Points") ? points : "€" + price}</p>
//       </div>
//     </div>
//   );
// };
